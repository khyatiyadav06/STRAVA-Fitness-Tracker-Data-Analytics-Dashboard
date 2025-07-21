# STRAVA-Fitness-Tracker-Data-Analytics-Dashboard

📊 **An interactive health & fitness analysis using Python, SQL & Power BI**

---

## 🧭 Project Overview

This project analyzes fitness tracker data (from devices like Fitbit, inspired by Strava users) to explore user health trends, activity behavior, and sleep patterns. It delivers actionable insights through:

* 📌 **Python Exploratory Data Analysis (EDA)**
* 🗄️ **SQL-based Querying & Classification**
* 📈 **Power BI Interactive Dashboard**

---

## 🎯 Objective

To explore how users utilize smart devices (like Strava/Fitbit), and deliver data-driven recommendations that enhance:

* 🏃‍♀️ User Engagement
* 📣 Marketing Strategies
* 🧘 Health & Wellness Awareness

---

## 📂 Dataset Summary

The data spans from **April 16 to May 9, 2016**, and includes:

| File                           | Description                             |
| ------------------------------ | --------------------------------------- |
| `dailyActivity_merged.csv`     | Daily step, calorie, and movement data  |
| `heartrate_seconds_merged.csv` | Heart rate at high resolution           |
| `sleepDay_merged.csv`          | Total sleep and time in bed             |
| `minuteMETsNarrow_merged.csv`  | MET (Metabolic Equivalent of Task) data |
| `weightLogInfo_merged.csv`     | User weight, BMI, and fat info          |

---

## 🧹 Data Cleaning & Processing

✔️ Removed duplicates & missing values
✔️ Converted date/time formats
✔️ Derived new metrics:

* **Calories per Minute**
* **Steps Intensity Category**
* **Active Minutes Per Day**

---

## 📊 Power BI Dashboard Highlights

🎯 **File**: [`STRAVA dashboard.pbix`](./STRAVA%20dashboard.pbix)

### Key Dashboard Features

* **Overview Page**

  * Total Steps
  * Active Minutes
  * Calories Burned
  * Sleep Summary

* **Sleep Analysis**

  * Avg. Sleep Duration
  * Sleep Deficit Users (<6 hrs)
  * Bedtime Trends

* **Heart Rate Insights**

  * Time Series of Heart Rate Spikes
  * Resting vs Peak Heart Rate

* **User Activity Patterns**

  * Hourly Steps Distribution
  * METs Intensity Trends
  * Evening vs Morning Activity Comparison

* **BMI & Weight**

  * BMI Classifications: Underweight → Obese
  * Weight-BMI Correlation
  * Outlier Detection (\~BMI 47.5)

✅ *Interactive slicers allow filtering by user, time range, and activity type.*

---
<img width="1309" height="738" alt="Screenshot 2025-07-21 144221" src="https://github.com/user-attachments/assets/f7dda926-ff90-4e55-ae31-57c7a33f1c7b" />


## 🧪 Python EDA Summary

📓 Notebook: [`main.ipynb`](./main.ipynb)

* Visualized trends in heart rate, calories, and METs using **Seaborn** and **Plotly**
* Identified **active time windows**, **rest hours**, and **recovery periods**
* Focused on **3 key user behaviors** across steps, calories, and sleep

---

<img width="620" height="469" alt="image" src="https://github.com/user-attachments/assets/3952ba3d-cfde-4fa2-96ae-b679844e67df" />

<img width="940" height="400" alt="image" src="https://github.com/user-attachments/assets/bc48f33b-846b-4678-8f38-1c5d06f76538" />

<img width="930" height="322" alt="image" src="https://github.com/user-attachments/assets/a03a24b3-2018-43d1-aa07-aa53f2c43cf9" />

## 🗃️ SQL Analysis Summary

🗂️ Script: [`sql_queries.sql`](./sql_queries.sql)

Key SQL queries:

* 💤 Avg. Sleep Duration & Users with <6 hrs sleep
* 🏃 Steps & Activity Rankings
* ⚖️ BMI Classifications
* 🔁 Duplicate Checks across tables (steps & calories)

---

## 🔍 Observations & Insights

* **Evening hours** show peak user activity → ideal for engagement campaigns
* Users with **low sleep & high heart rate** indicate potential fatigue/stress
* High **METs variation** across day suggests multiple short intense workouts
* Most users fall under **normal/overweight BMI**, except one extreme outlier
* Activity patterns vary significantly by user → opportunity for personalization

---

## 🧠 Business Impact

This project empowers:

* 📈 **Marketers** to target time-based fitness campaigns
* 🩺 **Health coaches** to identify high-risk users (e.g., sleep-deprived)
* 📱 **App developers** to enhance Strava/Fitbit UX with deeper insights
* 📊 **Analysts** to build predictive models for user segmentation

---

## 📁 Project Structure

```
📦 Strava-Fitness-Analytics
├── main.ipynb                  # Python EDA
├── sql_queries.sql             # SQL scripts
├── STRAVA dashboard.pbix       # Power BI Dashboard
├── Strava python report.docx   # Final EDA Report
└── README.md                   # Project Overview
```

---

## 👩‍💻 Author

**Khyati Yadav**

---

## 📌 Note

The data used here is anonymized and sample-based (from Fitbit), mimicking how **Strava-like fitness apps** collect and report user metrics.

---


