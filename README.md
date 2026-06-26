
# 🏏 IPL Full-Stack Data Analytics & BI Pipeline (2008 - 2023)

An end-to-end Data Engineering and Business Intelligence project analyzing 16 seasons of Indian Premier League (IPL) data. This repository features a complete analytics architecture that covers data cleaning in Python, relational database integration with PostgreSQL, advanced analytical querying using SQL, and dynamic interactive reporting via Power BI.

---

## 📌 Project Architecture & Workflow

The project is structured as a professional, multi-tier data pipeline:

```text
[ Raw CSV Data ] ➔ [ Pandas Preprocessing ] ➔ [ SQLAlchemy Engine ] ➔ [ PostgreSQL DB ] ➔ [ SQL Queries / Power BI Dashboard ]
```

---

## Data Preprocessing & ETL Engine (`IPL Data Analysis.ipynb`)

Uses **pandas** to read, handle missing entries, and transform the raw **Ipl-clean-data2008-2023.csv**.

Establishes a database connection via **sqlalchemy** and **psycopg2** to systematically write the structured data directly into a local PostgreSQL database instance (**ipl_database**).

---

## Database Analytical Layer (`ipl_dataset.sql`)

Contains targeted SQL queries running aggregations directly against the database to answer critical business and performance logic.

Tracks metrics such as:

- **Toss Decision Success Rates:** Calculating winning percentages based on match decisions.
- **Captain Longevity:** Querying home and away captain records via `UNION ALL` statements to assess consistent winners.
- **Player & Venue Impact:** Isolating top Player of the Match (POM) award winners and determining stadium-specific victory margins.

---

## Business Intelligence Presentation Layer (`ipl-dataset.pbix`)

A full enterprise-ready Power BI Desktop Report featuring custom data models, layout design sheets, and specialized visual components like **Risk Heatmaps** to present structural game insights seamlessly.

---

# 🛠️ Tech Stack

### Data Engineering
- Python 3.x
- pandas
- numpy
- sqlalchemy
- psycopg2

### Database Engine
- PostgreSQL (pgAdmin)

### Analytical Queries
- SQL

### Business Intelligence
- Power BI Desktop

---

# 📁 Repository Structure

```text
IPL-Data-Analytics-2008-2023/
├── IPL Data Analysis.ipynb   # Jupyter Notebook handling Data Cleaning & PostgreSQL loading
├── ipl_dataset.sql           # SQL scripts featuring analytical queries and KPI computations
├── ipl-dataset.pbix          # Interactive Power BI Dashboard application file
└── README.md                 # Project documentation
```

---

# 📊 SQL Metric Highlights

The queries within **ipl_dataset.sql** isolate critical dimensions.

### The Toss Impact Formula

```sql
SELECT ROUND(
    100.0 * SUM(CASE WHEN toss_won = winner THEN 1 ELSE 0 END) / COUNT(*),
    2
) AS toss_win_impact
FROM matches;
```

### Venue Excitement Rating

Computes the average point/run margin per stadium to track which locations produce the most competitive, close encounters.

---

# 🔧 Setup & Execution Guide

## Phase 1: Python ETL & Database Load

Clone the repository to your local machine.

Install the necessary Python packages:

```bash
pip install pandas sqlalchemy psycopg2 jupyter
```

Open **pgAdmin** and create a new database named **ipl_database**.

Run the code cells sequentially in **IPL Data Analysis.ipynb** to clean your CSV data and automatically load it into PostgreSQL using the SQLAlchemy engine connection.

---

## Phase 2: Running Database Analytics

Open the **ipl_dataset.sql** script inside pgAdmin or any SQL terminal connected to your database server.

Execute the queries to analyze:

- Captain statistics
- Toss advantages
- Ground characteristics

---

## Phase 3: Visualizing the Dashboard

Open **ipl-dataset.pbix** using Power BI Desktop.

Refresh or point the data source connection to your local PostgreSQL server to view live charts on team title trends, player benchmarks, and stadium records.

---

# 🖼️ Dashboard Preview

<p align="center">
  <img width="1295" height="737" alt="image" src="https://github.com/user-attachments/assets/8abe9168-6832-4e15-bf3a-d55db9750fe5" />
</p>

---

**Status:** 🚀 Complete Full-Stack Analytics Project | Ready for Production Review.



Status: 🚀 Complete Full-Stack Analytics Project | Ready for Production Review.



