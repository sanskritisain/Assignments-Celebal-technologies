# RideShare Data Engineering Project

## Project Overview

This project implements an end-to-end data engineering pipeline for ride-sharing operations and driver performance analysis using Apache Spark and PySpark.

The pipeline follows the Medallion Architecture:

* Bronze Layer: Raw data ingestion
* Silver Layer: Data cleaning, validation, joins, and enrichment
* Gold Layer: Business KPIs, driver performance metrics, and analytical outputs

## Problem Statement

Ride-sharing platforms generate large volumes of driver, trip, and operational log data. However, raw data cannot directly provide useful insights about:

* Driver performance
* Trip completion and cancellation rates
* Delay patterns
* Revenue generation
* High-demand pickup locations

This project transforms raw operational data into clean, validated, and business-ready analytical datasets.

## Technologies Used

* Python
* PySpark
* Apache Spark
* Spark SQL
* Databricks
* Parquet
* Git
* GitHub

## Dataset Description

### Drivers Dataset

Contains driver-related information:

* `driver_id`
* `name`
* `city`
* `rating`

### Trips Dataset

Contains ride-related information:

* `trip_id`
* `driver_id`
* `pickup_location`
* `drop_location`
* `distance_km`
* `fare_amount`
* `trip_status`

### Trip Logs Dataset

Contains operational trip information:

* `log_id`
* `trip_id`
* `start_time`
* `end_time`
* `delay_minutes`
* `cancellation_flag`

## Project Architecture

```text
Raw CSV Files
      |
      v
Bronze Layer
Raw data stored without transformation
      |
      v
Silver Layer
Cleaning, validation, joins, and derived columns
      |
      v
Gold Layer
Aggregated KPIs and business analytics
      |
      v
Final CSV Outputs
```

## Bronze Layer

The Bronze Layer performs raw data ingestion using explicit PySpark schemas.

Main tasks:

* Read raw CSV files
* Apply predefined schemas
* Validate record counts
* Preserve source data without transformation
* Store datasets in Parquet format

All three datasets contain 150 records, and no records were lost during ingestion.

## Silver Layer

The Silver Layer performs data cleaning, validation, integration, and enrichment.

Main tasks:

* Check duplicate records
* Validate null values
* Validate driver ratings
* Validate distance, fare, and delay values
* Validate trip status and cancellation flags
* Join drivers, trips, and trip logs
* Create derived columns

Derived columns include:

* `trip_duration_minutes`
* `completion_flag`
* `is_delayed`
* `revenue_per_km`
* `delay_category`
* `trip_date`
* `trip_hour`

The final Silver dataset contains 150 clean and integrated trip records.

## Gold Layer

The Gold Layer generates analytical tables and business KPIs.

Generated outputs include:

* Driver performance analysis
* Cancellation rate analysis
* Revenue analysis
* Delay analysis
* High-demand pickup locations
* Overall business KPI summary
* Overall driver ranking
* City-wise driver ranking

Spark window functions were used to rank drivers based on:

* Completion rate
* Total revenue
* Average delay
* Driver rating

## Data Validation

The project includes validation checks for:

* Raw-to-Bronze record count consistency
* Duplicate primary keys
* Referential integrity
* Missing driver references
* Missing trip log references
* Completed trip timestamps
* Cancellation flag consistency
* Invalid numeric values
* Silver record count validation
* Gold table availability

All implemented validation checks passed successfully.

## Final Outputs

The following CSV files were generated:

* `driver_performance.csv`
* `cancellation_rate.csv`
* `revenue_summary.csv`
* `delay_report.csv`
* `high_demand_locations.csv`

## Project Structure

```text
RideShare-Data-Engineering-Project/
│
├── README.md
├── requirements.txt
│
├── data/
│   ├── raw/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── notebooks/
│   ├── 01_Bronze_Layer.ipynb
│   ├── 02_Silver_Layer.ipynb
│   ├── 03_Gold_Layer.ipynb
│   └── 04_Data_Validation.ipynb
│
├── screenshots/
│   ├── 01_Project_Setup/
│   ├── 02_Data_Upload/
│   ├── 03_Bronze_Layer/
│   ├── 04_Silver_Layer/
│   ├── 05_Gold_Layer/
│   ├── 06_Window_Functions/
│   ├── 07_Final_Output/
│   └── 08_GitHub/
│
├── reports/
│   └── Project_Report.pdf
│
├── sql/
│   ├── driver_performance.sql
│   ├── cancellation_analysis.sql
│   ├── revenue_analysis.sql
│   ├── delay_analysis.sql
│   └── window_functions.sql
│
└── output/
    ├── driver_performance.csv
    ├── cancellation_rate.csv
    ├── revenue_summary.csv
    ├── delay_report.csv
    └── high_demand_locations.csv
```

## Key Project Results

* 150 drivers were available in the source dataset
* 150 trips were processed
* 150 trip log records were processed
* 99 drivers performed at least one trip
* 63 trips were completed
* 87 trips were cancelled
* 5 cities were included in revenue analysis
* 5 pickup locations were included in demand analysis
* No duplicate primary keys were found
* No invalid numeric records were found
* No records were lost during the pipeline

## Conclusion

This project demonstrates the implementation of a complete data engineering pipeline using PySpark, Apache Spark, Spark SQL, Databricks, and Parquet.

It converts raw ride-sharing data into validated, scalable, and business-ready datasets that can support operational monitoring and data-driven decision-making.
