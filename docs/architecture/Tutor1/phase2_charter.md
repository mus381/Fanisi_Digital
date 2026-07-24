# Fanisi Digital
# Tutor 1 — Phase 2 Project Charter
## Data Modeling Layer

Version: v0.6

---

# Project Context

Fanisi Digital is a practical financial analytics project developed incrementally through a layered architecture.

Each phase builds upon the validated outputs of the previous phase.

The overall ecosystem is:

```
DATA LAYER (Tutor 1)
        │
        ▼
SEMANTIC LAYER (Tutor 2)
        │
        ▼
FINANCIAL DOMAIN LAYER (Alpha)
        │
        ▼
EXECUTIVE PRESENTATION LAYER (Tutor 3)
        │
        ▼
CLIENT DELIVERABLE
```

Tutor 1 itself is divided into multiple phases.

```
Phase 1
Data Preparation
        │
        ▼
Phase 2
Data Modeling
        │
        ▼
Phase 3
Advanced SQL
        │
        ▼
...
```

This chat begins **Tutor 1 Phase 2**.

---

# Phase Mission

The objective of this phase is to transform the validated revenue ledger into a correctly modeled analytical dataset suitable for downstream semantic modeling.

This phase is **not** responsible for cleaning data.

It is responsible for understanding the business represented by the data.

---

# Inputs

Phase 2 receives the following validated artifacts from Phase 1.

Primary dataset

```
clean_invoice_ledger
```

Supporting documentation

```
README.md

business_rules.md

data_profiling.md
```

Supporting SQL

```
00_create_raw_view.sql

01_profile_data.sql

01b_investigation.sql

01c_business_rules.sql

02_clean_invoice_ledger.sql

03_validation.sql
```

Evidence

```
duplicate_invoice_ids.csv

missing_amounts.csv

payment_status_distribution.csv

currency_distribution.csv
```

---

# Phase Scope

The work performed in this phase includes only:

✓ Entity discovery

✓ Relationship discovery

✓ Grain enforcement

✓ Fact and Dimension separation

✓ Star schema construction

✓ Model validation

Everything else is outside scope.

---

# Phase Deliverables

The expected outputs are:

```
Entity Inventory

↓

Relationship Map

↓

Grain Proof

↓

Fact Table

↓

Dimension Tables

↓

Star Schema

↓

Validation Report
```

Minimum required tables

```
fact_engagement_billing

dim_client

dim_project_type
```

Additional dimensions may only be introduced when justified by the data.

---

# Phase Invariants

The following constraints must never be violated.

1.

The raw CSV remains immutable.

---

2.

The clean revenue ledger is the only approved operational source.

---

3.

Every analytical table must have a clearly defined business grain.

---

4.

Facts and dimensions must never mix responsibilities.

---

5.

Every modeling decision must be justified from the business process represented by the data.

---

# Non-Goals

Phase 2 must not perform:

- Currency conversion

- Date normalization

- Dashboard construction

- KPI definition

- Financial ratio calculations

- Visualization

- Data cleaning already completed in Phase 1

---

# Success Criteria

This phase is complete only when:

✓ Every business entity has been discovered.

✓ Every relationship has been justified.

✓ The analytical grain has been proven.

✓ Fact tables are identified.

✓ Dimension tables are identified.

✓ The star schema has been validated.

No downstream semantic modeling should begin until these conditions are satisfied.

---

# Working Methodology

Operate under first principles.

Every modeling decision must answer:

1.

What business object exists?

2.

What event occurred?

3.

What is the analytical grain?

4.

What changes over time?

5.

What describes the event?

6.

What should be measured?

7.

Why does this belong in a fact or dimension?

Assumptions must be explicitly identified.

Unknowns must never be silently resolved.

---

# Repository Structure

The project currently follows the structure below.

```
Fanisi_Digital/
│
├── data/
│   ├── raw/
│   │   └── fanisi_digital_raw_invoice_export.csv
│   │
│   └── clean/
│       └── clean_invoice_ledger.csv
│
├── docs/
│   ├── README.md
│   ├── business_rules.md
│   ├── data_profiling.md
│   ├── phase1_handoff.md
│   └── phase2_charter.md
│
├── results/
│   └── investigation/
│       ├── duplicate_invoice_ids.csv
│       ├── missing_amounts.csv
│       ├── payment_status_distribution.csv
│       └── currency_distribution.csv
│
├── sql/
│   ├── phase1/
│   │   ├── 00_create_raw_view.sql
│   │   ├── 01_profile_data.sql
│   │   ├── 01b_investigation.sql
│   │   ├── 01c_business_rules.sql
│   │   ├── 02_clean_invoice_ledger.sql
│   │   └── 03_validation.sql
│   │
│   └── phase2/
│       ├── 00_entity_discovery.sql
│       ├── 01_relationship_discovery.sql
│       ├── 02_grain_validation.sql
│       ├── 03_fact_dimension_classification.sql
│       ├── 04_star_schema.sql
│       └── 05_model_validation.sql
│
├── fanisi_digital.duckdb
│
├── .gitignore
│
├── CHANGELOG.md
│
└── README.md
```

---

# Phase 2 Execution Order

All work in this phase should proceed strictly in the following order.

```
00_entity_discovery.sql

↓

01_relationship_discovery.sql

↓

02_grain_validation.sql

↓

03_fact_dimension_classification.sql

↓

04_star_schema.sql

↓

05_model_validation.sql
```

Each stage must produce documented evidence before the next stage begins.

---

# Expected Handoff

Upon completion, this phase should hand over:

- Validated star schema
- Proven analytical grain
- Fact table(s)
- Dimension table(s)
- Relationship map
- Model validation report

These artifacts become the input contract for the Semantic Layer (Tutor 2).

---

Status

```
Tutor 1

Phase 2

READY TO BEGIN
```