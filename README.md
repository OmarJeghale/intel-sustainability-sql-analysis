# ♻️ Intel Sustainability SQL Analysis

## 📘 Project Overview

This project analyzes Intel's 2024 device repurposing program to uncover how different device types, device ages, and global regions contribute to energy savings and CO₂ reduction.

Using SQL, I queried over **600,000 records** to evaluate repurposing effectiveness and delivered **data-driven recommendations** to help Intel maximize the environmental impact of their sustainability initiatives.

---

## 📊 Key Insights

- ✅ **601,740 devices** were repurposed in 2024
- 💡 **Older devices** save the most energy and CO₂ per unit
- 🌏 **Asia** provides the highest CO₂ reduction due to more carbon-intensive electricity
- 📉 **Newer devices** are repurposed more frequently but have lower per-unit impact

---

## 🛠️ Tools Used

- SQL (joins, CTEs, CASE WHEN, GROUP BY, aggregation)
- Datasets: `intel.device_data`, `intel.impact_data` (mocked Intel data)

---

## 🔍 SQL Queries

| File | Description |
|------|-------------|
| `01_join_all_data.sql` | Join device and impact data tables |
| `02_add_device_age.sql` | Calculate device age (2024 - model_year) |
| `03_device_age_bucket.sql` | Bucket devices by age: newer, mid-age, older |
| `04_summary_stats.sql` | Total devices, average energy savings, total CO₂ saved |
| `05_device_type_impact.sql` | Analyze environmental impact by device type |
| `06_device_age_bucket_impact.sql` | Impact analysis by device age group |
| `07_region_impact.sql` | Energy and CO₂ impact by region |

---

## 📂 Full Report

📄 [Download full project PDF](https://github.com/OmarJeghale/intel-sustainability-sql-analysis/blob/main/Intel_Sustainability_SQL_Analysis.pdf)

Includes all queries, analysis write-ups, and final recommendations.

---

## 📌 Final Recommendation

Intel should prioritize repurposing **older devices (6+ years)** and target **high carbon-intensity regions** (like Asia) to maximize sustainability outcomes.

A proposed solution is a **scoring system** that ranks devices based on age and regional CO₂ offset potential, helping Intel allocate repurposing resources for maximum environmental benefit.

---

## 🤖 ChatGPT Collaboration

Some of the insights and strategies in this project were strengthened through guided brainstorming with ChatGPT. It helped develop the scoring system idea and provided real-world CO₂ comparisons (e.g., car emissions, household energy usage) to make the impact more relatable.

---

## 🔗 Connect with Me

**👤 Omar Jeghalef**  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/omar-jeghalef/)  
[![GitHub](https://img.shields.io/badge/GitHub-black?style=flat&logo=github&logoColor=white)](https://github.com/OmarJeghale)
