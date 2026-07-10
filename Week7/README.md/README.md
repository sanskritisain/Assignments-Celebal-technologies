# Week 7 - Delta Lake Incremental Data Processing

## 📌 Objective

The objective of this assignment is to understand and implement incremental data processing using Delta Lake with Apache Spark. The project demonstrates how to load data into a Delta table, clean the data, simulate incremental updates, perform MERGE operations, and validate the final results.

---

## 🛠 Technologies Used

- Python
- Apache Spark (PySpark)
- Delta Lake
- Google Colab
- Pandas
- GitHub

---

## 📂 Project Structure

```
Week7_Delta_Lake_Incremental_Data_Processing/
│
├── data/
│   ├── customer_master.csv
│   └── customer_incremental.csv
│
├── notebooks/
│   └── delta_scd_assignment.ipynb
│
├── screenshots/
│   ├── data_loading/
│   ├── data_cleaning/
│   ├── scd1/
│   ├── scd2/
│   ├── validation/
│   └── final_output/
│
├── Week7_Report.pdf
│
└── README.md
```

---

## 📋 Assignment Tasks

### Step 1 : Data Loading

- Loaded customer dataset into PySpark DataFrame
- Created Delta Table
- Verified schema
- Displayed sample records

---

### Step 2 : Data Cleaning

- Checked null values
- Filled missing values
- Checked duplicate records
- Removed duplicates
- Saved cleaned Delta table

---

### Step 3 : Incremental Dataset

- Created incremental dataset
- Modified existing records
- Added new customer record
- Saved incremental dataset

---

### Step 4 : Delta MERGE Operation

- Loaded existing Delta table
- Applied MERGE operation
- Updated existing records
- Inserted new records

---

### Step 5 : Validation

- Verified total record count
- Checked duplicate records
- Verified updated records
- Displayed final Delta table

---

## 📊 Key Concepts Covered

- Apache Spark
- Delta Lake
- Data Cleaning
- Incremental Data Processing
- MERGE Operation
- Data Validation
- SCD Type 1 Concept
- Delta Table Management

---

## 📁 Output

- Jupyter Notebook (.ipynb)
- Customer Master Dataset
- Incremental Dataset
- Screenshots
- Assignment Report
- GitHub Repository

---

## 📚 Learning Outcome

Through this assignment, I learned how to build an incremental data processing pipeline using Apache Spark and Delta Lake. I gained practical experience with Delta tables, MERGE operations, data cleaning, validation techniques, and efficient data engineering workflows.

---

## 👩‍💻 Author

Sanskriti
Celebal Technologies Summer Internship 2026