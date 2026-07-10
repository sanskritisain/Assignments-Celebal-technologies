# Azure Cloud Fundamentals and Data Pipeline Implementation using ADF

## Objective

The objective of this project is to understand Azure cloud concepts and build a complete end-to-end data pipeline using Azure Storage Account and Azure Data Factory (ADF). The project demonstrates data ingestion, metadata validation, data movement, monitoring, and access management in Azure.

---

## Project Overview

This project implements a complete data pipeline that reads a CSV file from Azure Blob Storage, validates the file using the Get Metadata activity, and copies the data to a destination location using Azure Data Factory.

### Source

* Azure Blob Storage
* File: Sample-Superstore.csv

### Processing

* Linked Service Configuration
* Source and Destination Datasets
* Get Metadata Activity
* Copy Data Activity

### Destination

* Azure Blob Storage (destination-container)
* Output File: superstore_copy.csv

---

## Azure Services Used

* Azure Resource Group
* Azure Storage Account
* Azure Blob Storage
* Azure Data Factory (ADF)
* Azure Identity and Access Management (IAM)

---

## Assignment Tasks Completed

### Task 1: Azure Portal Exploration

* Explored Azure Portal
* Created a Resource Group

**Deliverable:**

* Screenshot of Resource Group

---

### Task 2: Storage Setup

* Created Azure Storage Account
* Created Blob Containers
* Uploaded Sample-Superstore.csv file

**Deliverable:**

* Screenshot of Blob Container with uploaded CSV file

---

### Task 3: Azure Data Factory Basics

* Created Azure Data Factory
* Explored ADF Studio:

  * Author
  * Monitor
  * Manage
* Created Linked Service for Blob Storage
* Created Source Dataset
* Created Destination Dataset
* Configured Get Metadata Activity

**Deliverables:**

* Linked Service Screenshot
* Dataset Screenshot
* Get Metadata Screenshot

---

### Task 4: Pipeline Development

Created pipeline:

**PL_Superstore_Copy**

Pipeline Activities:

1. Get Metadata

   * Validates source file
   * Checks file existence and metadata

2. Copy Data

   * Copies data from source-container
   * Writes data to destination-container

**Deliverable:**

* Pipeline Design Screenshot

---

### Task 5: Pipeline Execution

* Published Pipeline
* Executed Pipeline Successfully
* Monitored execution using ADF Monitor

**Deliverable:**

* Successful Pipeline Execution Screenshot

---

### Task 6: IAM Configuration

Configured Azure IAM permissions for storage access.

Roles Assigned:

* Reader
* Contributor / Storage Blob Data Contributor

**Deliverable:**

* Role Assignment Screenshot

---

## Pipeline Architecture

Sample-Superstore.csv (Source Blob Storage)

↓

Get Metadata

↓

Copy Data

↓

superstore_copy.csv (Destination Blob Storage)

---

## Project Workflow

1. Upload CSV file to source-container.
2. Connect Azure Data Factory to Blob Storage using Linked Service.
3. Create source and destination datasets.
4. Validate file metadata using Get Metadata activity.
5. Copy data using Copy Data activity.
6. Monitor pipeline execution.
7. Verify copied file in destination-container.

---

## Results

* Resource Group created successfully.
* Storage Account configured successfully.
* Source CSV uploaded successfully.
* Linked Service and Datasets created successfully.
* Metadata validation completed successfully.
* Data copied successfully to destination container.
* Pipeline execution completed successfully.
* IAM roles configured successfully.

---

## Expected Output Achieved

✔ Pipeline executed successfully

✔ Data copied to destination

✔ Metadata validated

✔ End-to-End Blob → ADF → Destination pipeline implemented

---

## Repository Structure

```text
Azure-ADF-Superstore-Project
│
├── screenshots
├── dataset
├── report
└── README.md
```

## Conclusion

This project successfully demonstrates Azure cloud fundamentals and the implementation of an end-to-end data pipeline using Azure Data Factory and Azure Blob Storage. The solution includes data ingestion, metadata validation, data transfer, monitoring, and access management using Azure services.
