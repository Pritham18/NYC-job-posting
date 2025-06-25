# NYC-job-posting
This project explores the dynamics of the New York City job market using real job posting data from NYC’s official website. The main objective was to understand hiring trends, job type distributions, salary ranges, and agency-wise job availability to uncover patterns that are useful for job seekers, policymakers, and researchers.
NYC Jobs Data Analysis – AIT 580 Final Project
📌 Project Overview
This repository contains the final research project for AIT 580 (Data Analytics), conducted by Pritham Mahajan. The study focuses on analyzing the New York City Jobs Dataset, sourced from the City of New York’s official open data portal. The aim was to uncover hiring trends, job type distribution, salary insights, and agency-based employment behavior to assist job seekers, city planners, and policymakers in making informed decisions.
🧠 Objective
The primary goal of this project is to explore and answer key research questions about NYC's employment landscape by analyzing online job postings. These questions include:
Which are the top 20 most frequently posted job categories in NYC?
How do job posting volumes vary across the top 10 city agencies?
What is the distribution of full-time and part-time roles across these agencies?
Is there any relationship between the number of positions offered and the salary ranges provided?
📁 Dataset Details
Source: NYC Open Data (Jobs NYC Postings)
Scope: Contains both internal and external job postings
Fields Used:
Job ID
Agency Name
Title and Job Category
Salary Range (From & To)
Job Type (Full-time/Part-time)
Work Location
Posting Dates
Required Skills
🔧 Tools & Technologies
Tool	Purpose
Excel	Initial data cleaning, formatting, identifying irregular entries
Python (Pandas)	Data wrangling, deduplication, column standardization
SQL	Storing and querying the cleaned dataset
R / RStudio (ggplot2)	Visualization and statistical graphics
Jupyter Notebook	Documenting EDA and automation scripts
 
🧹 Data Cleaning Summary
Level Column Fixes: Cleaned improperly labeled levels like "A1", "B1", "M1" into numeric values.
Full-Time/Part-Time: Standardized inconsistent job type entries and filled missing values with "N/A".
Shift Hours: Normalized non-uniform timing entries for clearer analysis.
Job Category: Unmixed scrambled text entries to accurately reflect actual categories.
Column Drops: Removed unnecessary fields such as "Unnamed: 20", redundant title codes, and extra brackets in Civil Service fields.
Work Location: Cleaned location data to show only street-level details without ZIP/state clutter.
📊 Visualizations & Insights
Top 20 Job Categories
Bar chart showing high demand in Social Services, Data & Innovation, and Public Health sectors.
Top 10 Hiring Agencies
Ranked bar chart indicating Department of Social Services as the top recruiter.
Full-Time vs. Part-Time Jobs by Agency
Stacked bar graph showing agencies' hiring strategies split between job types.
Salary Range vs. Job Count
Scatter plot showing relationship between number of positions offered and pay range, helping to identify where high-paying or high-volume roles are clustered.
📌 Key Findings
Social Services dominates NYC job postings by a large margin.
Agencies like Public Health and Constituent Services follow closely in demand.
Some agencies post a high number of part-time jobs, which could help flexible job seekers.
There's no direct linear relationship between number of jobs and pay range, indicating a wide variety in job types and compensation strategies.
📉 Limitations
The dataset may not fully represent private sector job dynamics.
Possible bias due to incomplete or outdated job descriptions.
The study’s scope was limited by time constraints and data complexity.
🚀 Future Work Suggestions
Add interactive dashboards using Tableau or Power BI.
Integrate real-time job feed from NYC’s API to track trends over time.
Apply NLP models to analyze job descriptions and classify skill requirements.
Build a job recommendation engine using similarity metrics (Cosine, Jaccard).
📂 Folder Structure (If included)
bashCopyEdit.
├── cleaned_data/                  # Final cleaned dataset (CSV)├── notebooks/                    # Python scripts and Jupyter Notebooks├── visualizations/               # Saved plots and charts├── sql_scripts/                  # SQL queries used for analysis├── report/                       # Final research paper (PDF/DOCX)├── presentation/                 # PowerPoint presentation├── .gitignore                    # Git tracking exclusions└── README.md                     # This file 
🙋‍♂️ Author
Pritham Mahajan
Graduate Student – George Mason University
