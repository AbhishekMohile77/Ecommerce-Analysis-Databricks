# E-Commerce Analytics – Databricks

An end-to-end e-commerce data engineering and analytics project built using
Databricks, implementing a Medallion Architecture to transform raw transaction
data into business-ready analytical datasets and interactive dashboards.

## Architecture

S3 Raw Data
→ Bronze Layer
→ Silver Layer
→ Gold Layer
→ Databricks Dashboard

### Bronze Layer
Raw transaction data is ingested from Amazon S3 into Delta tables, with
data-quality checks for missing, duplicate and invalid records.

### Silver Layer
Validated and cleaned transaction data is transformed into analytics-ready
datasets.

### Gold Layer
Business-focused tables are created for:

- Sales and revenue analysis
- Customer analysis
- Category performance
- Payment analysis
- Returns and ratings
- State-level performance
- Subscription analysis
- Daily and monthly sales
- KPI reporting

Pipeline execution is also tracked through an audit table.

## Technology Stack

- Databricks
- PySpark
- SQL
- Delta Lake
- Amazon S3
- Databricks SQL
- Medallion Architecture

## Dashboard

The Databricks dashboard provides two main views:

### Overview
- Revenue and customer KPIs
- Monthly/yearwise revenue trends
- Category performance
- Payment-method distribution

### Geographical Analysis
- Statewise revenue
- Geographic sales distribution
- Customer membership by state
