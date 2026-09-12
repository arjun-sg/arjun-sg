# HR Workforce & Compensation Analysis

## 📌 Project Overview

This project focuses on analyzing employee workforce data to understand workforce size, employee attrition, tenure, compensation, departmental distribution, work locations, and employee demographics.

The analysis was performed using Python on a dataset containing **10,500 employee records**. The project applies data analysis and visualization techniques to generate HR-related insights that can support workforce planning, retention analysis, compensation analysis, and other HR decisions.

---

## 🎯 Business Objectives

The main objectives of this project are to:

* Understand the overall workforce size and composition
* Analyze employee attrition and workforce movement
* Calculate average employee tenure
* Compare average CTC between Active and Relieved employees
* Analyze employee distribution across departments and shifts
* Understand the distribution of major designations across work locations
* Analyze joining and relieving trends over time
* Understand workforce demographics such as age and marital status

---

## 🗂️ Dataset

The dataset contains **10,500 employee records** with employee-related information such as:

* Employee ID
* Gender
* Age
* Date of Birth
* Date of Joining
* Date of Leaving
* Marital Status
* Designation
* Department
* Work Location
* Status
* Qualification
* Shift Details
* Current CTC

The dataset contains both **Active** and **Relieved** employees.

### Dataset Summary

| Metric                        |              Value |
| ----------------------------- | -----------------: |
| Total Employees               |             10,500 |
| Active Employees              |              8,717 |
| Relieved Employees            |              1,783 |
| Recorded Attrition Percentage |             16.98% |
| Average Employee Tenure       |          5.4 years |
| Employee Age Range            |        22–58 years |
| CTC Range                     | ₹4.5 LPA – ₹38 LPA |

---

## 🛠️ Tools & Technologies

* **Python**
* **Pandas** – Data manipulation and analysis
* **NumPy** – Numerical calculations
* **Matplotlib** – Data visualization
* **Seaborn** – Statistical and categorical visualization
* **Jupyter Notebook** – Development environment

---

## 🔍 Data Analysis Performed

The project includes the following analysis steps:

### 1. Data Exploration

* Inspected dataset structure and dimensions
* Reviewed data types and column information
* Checked missing values
* Checked duplicate records
* Analyzed unique values
* Examined categorical distributions
* Converted date columns into proper datetime format
* Performed basic validation of Age and CTC values

### 2. KPI Analysis

The project includes five KPI-style analyses:

#### KPI 1 – Total Employees

Calculated the total number of unique employees to understand the overall workforce size.

#### KPI 2 – Attrition Percentage

Calculated the percentage of employee records with a recorded leaving date.

#### KPI 3 – Average Employee Tenure

Calculated the average employee tenure using joining and leaving dates, with active employees measured up to the analysis date.

#### KPI 4 – Average CTC: Active vs Relieved

Compared the average CTC of Active and Relieved employees.

#### KPI 5 – Employees per Department: Active vs Relieved

Compared Active and Relieved employee counts across different departments.

---

## 📊 Visualizations

The project includes the following visualizations:

### 1. Employees by Shift and Status

A stacked bar chart comparing Active and Relieved employees across different shifts.

**Business purpose:**
Helps identify shifts with a relatively higher concentration of relieved employees and areas that may require further HR investigation.

### 2. Top 10 Designations by Work Location

A heatmap showing the distribution of the top 10 designations across different work locations.

**Business purpose:**
Helps understand workforce concentration across locations and can support workforce allocation and recruitment planning.

### 3. Joining vs Relieving Trend

A line chart comparing employee joining and relieving trends over time.

**Business purpose:**
Helps HR understand workforce movement and identify periods where employee exits may be high compared with new joinings.

### 4. Marital Status Distribution

A pie chart showing the distribution of employees based on marital status.

**Business purpose:**
Provides basic workforce demographic context that can support broader workforce and benefits planning.

### 5. Age Distribution

A histogram showing the distribution of employees across different age ranges.

**Business purpose:**
Helps understand the age composition of the workforce and can support workforce planning, career development, and succession planning.

---

## 💡 Key Business Insights

Some of the key observations from the analysis include:

* The dataset contains **10,500 employees**, providing a broad view of the workforce.
* **8,717 employees are Active**, while **1,783 employees are Relieved**.
* The percentage of employee records with a recorded leaving date is **16.98%**.
* The average employee tenure is approximately **5.4 years**.
* The average CTC of Active employees is approximately **₹16.90 LPA**, while the average CTC of Relieved employees is approximately **₹17.00 LPA**.
* The small difference in average CTC between Active and Relieved employees does not by itself indicate that compensation is a major reason for employee attrition.
* Department-wise and shift-wise employee status analysis can help identify areas that require deeper retention analysis.
* Joining and relieving trends provide a view of workforce movement over time.

---

## 📁 Project Structure

```text
HR-Workforce-Compensation-Analysis/
│
├── HR_Analytics.ipynb
├── Employee_Profile_10500.csv
└── README.md
```

---

## ▶️ How to Run the Project

1. Clone or download this repository.
2. Make sure Python and Jupyter Notebook are installed.
3. Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn
```

4. Open `HR_Analytics.ipynb` in Jupyter Notebook or JupyterLab.
5. Keep `Employee_Profile_10500.csv` in the same project folder.
6. Run the notebook cells sequentially to reproduce the analysis.

---

## 👤 About the Project

This project was developed as part of my **Data Analyst portfolio** to demonstrate practical skills in Python, data cleaning, exploratory data analysis, KPI development, data visualization, and business-oriented insight generation.

The project also applies my understanding of the **HR and Payroll domain** to analyze workforce and compensation data using Python.
