# 📅 Day 3: Sorting Data with `ORDER BY`

This module focuses on the essential SQL clause for organizing and presenting your query results: **`ORDER BY`**.  
You'll learn how to sort data by one or multiple columns in both ascending and descending order.

---

## 📚 Topics & Resources

### **Topics**
- `ORDER BY`
- `ASC` (Ascending)
- `DESC` (Descending)
- Multiple Column Sorting

### **Resources**
- 🎥 [YouTube: Sorting with ORDER BY](#)
- 🎥 [YouTube: SQL Fundamentals - ORDER BY](#)

---

## ⚙️ Core Concepts

### **Basic Syntax**
```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC|DESC];

# 📅 Day 3: Sorting Data with `ORDER BY`

This module focuses on the essential SQL clause for organizing and presenting your query results: **`ORDER BY`**.  
You'll learn how to sort data by one or multiple columns in both ascending and descending order.

---

## ⚙️ Key Points

- **`ASC` → Ascending order** *(default: A–Z, 0–9, oldest → newest)*  
- **`DESC` → Descending order** *(Z–A, 9–0, newest → oldest)*  
- You can **sort by multiple columns** for tie-breaking.  
- Sorting is typically the **last step** in a query before the `LIMIT` clause.

---

## 🧩 Examples

| **Description** | **SQL Query** |
|------------------|---------------|
| Sort patients by age (oldest first). | ```sql SELECT * FROM patients ORDER BY age DESC; ``` |
| Sort by age (DESC), then name (ASC) to break ties. | ```sql SELECT * FROM patients ORDER BY age DESC, name ASC; ``` |
| Select name and age, but order by an unselected column (`satisfaction`). | ```sql SELECT name, age FROM patients ORDER BY satisfaction DESC; ``` |

---

## 💡 Tips & Tricks

| **Tip** | **Explanation** |
|----------|-----------------|
| **Multi-Column Order** | The order you list columns matters: `ORDER BY service, age` sorts by service first, then by age within each service. |
| **Top N Queries** | Always use `DESC` with `LIMIT` to find highest values (Top N). |
| **Performance** | Sorting large datasets is expensive — use indexes on columns you sort frequently. |

---

## 🧑‍💻 Practice Questions

All queries below use the **`patients`** table.

---

### **1. Basic Sorting**

**Question:** List all patients sorted by age in descending order *(oldest first)*  
```sql
SELECT *
FROM patients
ORDER BY age DESC;
