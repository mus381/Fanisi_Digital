# Fanisi Digital

> A version-controlled financial analytics project for transforming raw invoice exports into a trusted revenue ledger using SQL and DuckDB.

---

# Project Overview

Fanisi Digital is the practical implementation of **Tutor 1 (SQL Data Layer)** within a larger analytics ecosystem.

The project demonstrates how to transform an untrusted CSV export into a validated analytical dataset through a reproducible SQL pipeline.

This repository focuses exclusively on the **Data Layer**.

---

# Ecosystem

```
DATA LAYER (Tutor 1 — SQL)
        │
        ▼
SEMANTIC LAYER (Tutor 2 — Business Measures)
        │
        ▼
FINANCIAL DOMAIN LAYER (Alpha — Metric Definitions)
        │
        ▼
EXECUTIVE PRESENTATION LAYER (Tutor 3)
        │
        ▼
CLIENT DELIVERABLE
```

---

# Project Goal

Starting from a raw invoice export:

- Profile the dataset
- Investigate anomalies
- Define explicit business rules
- Produce a trusted revenue ledger
- Validate the final output

The emphasis is on **auditability**, **reproducibility**, and **business correctness**, not simply writing SQL.

---

# Technology Stack

- DuckDB
- SQL
- Git
- GitHub
- VS Code

---

# Repository Structure

```
Fanisi_digital/
│
├── data/
│   ├── raw/
│   └── clean/
│
├── docs/
│   ├── business_rules.md
│   └── data_profiling.md
│
├── results/
│   └── investigation/
│
├── sql/
│   └── phase1/
│       ├── 00_create_raw_view.sql
│       ├── 01_profile_data.sql
│       ├── 01b_investigation.sql
│       ├── 01c_business_rules.sql
│       ├── 02_clean_invoice_ledger.sql
│       └── 03_validation.sql
│
├── fanisi_digital.duckdb
└── README.md
```

---

# Data Pipeline

```
Raw CSV
      │
      ▼
Raw View
      │
      ▼
Profiling
      │
      ▼
Investigation
      │
      ▼
Business Rules
      │
      ▼
Clean Revenue Ledger
      │
      ▼
Validation
```

---

# Phase 1 Deliverables

## 1. Raw Data View

Creates a stable SQL interface over the raw CSV.

```
raw_invoices
```

---

## 2. Data Profiling

Profiles:

- Row count
- Schema
- Payment statuses
- Currency distribution
- Revenue totals
- Average invoice value

---

## 3. Investigation

Investigates:

- Duplicate invoice IDs
- Missing amounts

Evidence is exported into the `results/` directory.

---

## 4. Business Rules

Business decisions are documented separately before implementation.

Examples:

- Exclude VOID invoices
- Include only paid invoices
- Exclude USD for V0.5
- Preserve duplicate invoices pending investigation

---

## 5. Clean Revenue Ledger

Produces the first trusted analytical dataset for downstream semantic modeling.

---

## 6. Validation

Confirms:

- Row count
- Revenue total
- Currency integrity
- Payment status integrity

---

# Business Rules (V0.5)

| Rule | Description |
|-------|-------------|
| BR-001 | Revenue consists only of paid invoices. |
| BR-002 | VOID invoices are excluded. |
| BR-003 | USD invoices are excluded pending FX implementation. |
| BR-004 | Dates remain unparsed in V0.5. |
| BR-005 | Duplicate invoice IDs are investigated but not automatically removed. |

---

# Execution Order

Execute the SQL scripts in the following order.

```
00_create_raw_view.sql

↓

01_profile_data.sql

↓

01b_investigation.sql

↓

01c_business_rules.sql

↓

02_clean_invoice_ledger.sql

↓

03_validation.sql
```

---

# Project Principles

This repository follows several engineering principles.

- Raw data is immutable.
- Business rules are explicit before implementation.
- Cleaning never occurs before investigation.
- Validation is mandatory.
- Every transformation is reproducible.
- SQL scripts are version-controlled.
- Intermediate evidence is preserved.

---

# Current Scope (V0.5)

Implemented:

- Raw data ingestion
- Profiling
- Investigation
- Revenue cleaning
- Validation
- Git version control

Not yet implemented:

- Date normalization
- FX conversion
- Duplicate resolution
- Semantic measures
- Star schema
- Dashboard layer

---

# Future Roadmap

## Tutor 2

Business semantic layer.

Examples:

- Revenue
- Collected Revenue
- Outstanding Revenue
- Average Invoice Value
- Revenue by Engagement Type

---

## Alpha

Financial metric definitions.

Examples:

- Revenue Recognition
- Cash Collection
- Accounts Receivable
- Working Capital

---

## Tutor 3

Executive dashboards.

Examples:

- KPI Cards
- Revenue Trends
- Client Performance
- Cash Collection Dashboard

---

# Learning Objective

This project exists to practice analytical engineering rather than isolated SQL syntax.

The primary objective is to develop the ability to transform operational data into trusted business information through structured reasoning, reproducible workflows, and explicit business rules.

---

# Version

Current Version

```
v0.5
```

Status

```
Tutor 1 Phase 1 Complete
```