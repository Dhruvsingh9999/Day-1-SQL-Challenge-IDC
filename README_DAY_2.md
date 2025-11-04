<p align="center">
<img src="https://placehold.co/100x100/10B981/ffffff?text=SQL" alt="Database Icon" />
</p>

# 🏥 Hospital Data Insights: SQL Challenge - Day 2 🚀

This repository documents my progress in **PostgreSQL** using the **pgAdmin 4** Query Tool with the `Hospital_Data` database.

---

## 📅 Day 2: Advanced Filtering with WHERE, AND, OR, & NOT

Today's session focused exclusively on mastering the **`WHERE`** clause by incorporating complex logical operators to extract highly specific data sets.

### **Level Up Achieved!** ⬆️

| **Topic** | **Description** | **Key Operators** | **Status** | 
 | ----- | ----- | ----- | ----- | 
| **Compound Filtering** | Using `AND` and `OR` to combine multiple conditions. | `AND`, `OR` | ✅ Done | 
| **Negation** | Filtering results that **do not** match a condition. | `NOT`, `<>` | ✅ Done | 
| **Range Filtering** | Selecting data that falls within a specific range. | `BETWEEN` | ✅ Done | 

### 🎯 Deep Dive: Filtering Data with WHERE Clause

The following questions were solved using the `WHERE` clause exclusively:

| **Q#** | **Question** | **Solution** | **Focus** | 
 | ----- | ----- | ----- | ----- | 
| **P9** | Select the names and ages of patients whose service is **'ICU' OR** their age is **less than 18**. | ```sql\nSELECT name, age\nFROM patient\nWHERE service = 'ICU' OR age < 18;``` | **OR** operator | 
| **P10**| Find the `name`, `arrival_date`, and `departure_date` for patients who arrived **BETWEEN '2025-01-01' and '2025-06-30'**. | ```sql\nSELECT name, arrival_date, departure_date\nFROM patient\nWHERE arrival_date BETWEEN '2025-01-01' AND '2025-06-30';``` | **BETWEEN** operator | 
| **P11**| Retrieve all records from `services_weekly` where the **`staff_morale` is NOT 81** and the `patients_admitted` is **greater than 50**. | ```sql\nSELECT *\nFROM services_weekly\nWHERE staff_morale <> 81 AND patients_admitted > 50;``` | **NOT** (`<>`) & **AND** | 
| **P12**| Show the `patient_id` and `service` for patients who have an `age` **greater than 60** **AND** a `satisfaction` score **less than 65**. | ```sql\nSELECT patient_id, service\nFROM patient\nWHERE age > 60 AND satisfaction < 65;``` | **AND** operator | 
| **P13**| List the names of all patients whose `service` is **NOT 'general\_medicine'**. | ```sql\nSELECT name\nFROM patient\nWHERE service <> 'general_medicine';``` | **NOT** (`<>`) operator | 

---
