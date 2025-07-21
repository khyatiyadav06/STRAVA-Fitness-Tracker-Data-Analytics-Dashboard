CREATE DATABASE STRAVA;
USE STRAVA;

CREATE TABLE DAILYACTIVITYMERGED(
	ID DOUBLE,
    ActivityDate DATE,
    TotalSteps INT,
    TotalDistance FLOAT,
    TrackerDistance FLOAT,
    LoggedActivitiesDistance INT,
    VeryActiveDistance FLOAT,
    SedentaryActiveDistance INT,
    VeryActiveMinutes INT,
    FairlyActiveMinutes INT,
    LightlyActiveMinutes INT,
    SedentaryMinutes INT,
    Calories INT
    
);

SELECT * FROM DAILYACTIVITY_MERGED;

CREATE TABLE SLEEPY_DAY(
	ID DOUBLE,
    SleepDay DATETIME,
    TotalSleepRecords INT,
    TotalMinutesAsleep INT,
    TotalTimeInBed INT
    
);

SELECT * FROM SLEEPY_DAY;

/*average sleep*/
SELECT ID, AVG(TotalMinutesAsleep) as Avg_Sleep,
 MAX(TotalMinutesAsleep) as Max_Sleep
FROM SLEEPY_DAY
GROUP BY ID;


/*user with <6 hours of sleep*/
SELECT Id, SleepDay, TotalMinutesAsleep
FROM sleepy_day
WHERE TotalMinutesAsleep < 360;

/*averagge steps*/
SELECT ID, AVG(TotalSteps) AS Avg_Steps
FROM DAILYACTIVITY_MERGED
GROUP BY ID;


/*Most active days*/
SELECT ID, ActivityDate, TotalSteps
FROM DAILYACTIVITY_MERGED
WHERE(ID, TotalSteps) IN (
	SELECT Id, MAX(TotalSteps)
    FROM dailyactivity_merged
    GROUP BY Id
);

CREATE TABLE dailysteps_merged(
	ID DOUBLE,
    ActivityDay DATETIME,
    StepTotal INT
    );
    

SELECT * FROM dailysteps_merged;

/*table daily_activity and daily_steps are same */
SELECT a.Id, a.ActivityDate, a.TotalSteps, s.StepTotal
FROM dailyactivity_merged a 
JOIN dailysteps_merged s ON a.ID = s.ID AND a.TotalSteps = s.StepTotal;

CREATE TABLE dailycalories_merged(
	ID DOUBLE,
    ActivityDay DATETIME,
    Calories INT
    );
    
    
/*table daily_activity and daily_calories are same */
SELECT a.Id, a.ActivityDate, a.Calories, s.Calories
FROM dailyactivity_merged a 
JOIN dailycalories_merged s ON a.ID = s.ID AND a.Calories = s.Calories;

SELECT * FROM weightloginfo_merged;

SELECT ID, AVG(WeightKg) as avg_weight
FROM weightloginfo_merged
GROUP BY ID;

SELECT ID,
  CASE
    WHEN BMI < 18.5 THEN 'Underweight'
    WHEN BMI < 24.9 THEN 'Normal'
    WHEN BMI < 29.9 THEN 'Overweight'
    ELSE 'Obese'
  END AS BMICategory
FROM weightloginfo_merged
GROUP BY ID, BMICategory;



