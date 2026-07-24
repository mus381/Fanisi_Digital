# Fanisi Digital
# Tutor 1 Handoff
## Phase 1 → Phase 2 (Data Modeling)

Version: v0.5

---

# Purpose

This document transfers responsibility from **Tutor 1 Phase 1 (Data Preparation)** to **Tutor 1 Phase 2 (Data Modeling)**.

Phase 1 established a trusted analytical dataset.

Phase 2 begins from that dataset and is responsible for constructing the analytical model.

No additional business cleaning should occur unless a Phase 1 assumption is proven incorrect.

---

# Phase 1 Mission (Completed)

The objective of Phase 1 was to transform an operational CSV export into a trusted analytical source.

Completed work included:

- Raw CSV ingestion
- Stable SQL view creation
- Dataset profiling
- Data investigation
- Business rule documentation
- Revenue ledger construction
- Validation

The output of Phase 1 is considered reproducible and version controlled.

---

# Input Contract

Phase 2 must begin from the following dataset.

```
clean_invoice_ledger
```

This dataset is the only approved operational source.

Phase 2 should not reference the raw CSV directly.

---

# Dataset Characteristics

The cleaned ledger contains one record for each invoice that satisfies the approved business rules.

Current fields include:

```
invoice_id

client_name

engagement_type

description

invoice_date

currency

amount

payment_status

payment_date

notes
```

---

# Business Rules Already Applied

The following rules have already been implemented.

### BR-001

Only paid invoices are included.

---

### BR-002

VOID invoices have been removed.

---

### BR-003

USD invoices have been excluded from Version 0.5.

---

### BR-004

Date values remain stored as text.

---

### BR-005

Duplicate invoice IDs remain unresolved pending future investigation.

No deduplication has occurred.

---

# Proven Invariants

The following assumptions have already been validated.

✓ Raw source remains immutable.

✓ Pipeline execution is reproducible.

✓ Business rules are documented.

✓ Revenue ledger has been validated.

✓ SQL is version controlled.

---

# Known Limitations

The following are intentionally unresolved.

- Date normalization
- Currency conversion
- Duplicate invoice resolution
- Missing amount handling

These limitations must be considered when modeling.

---

# Phase 2 Mission

Phase 2 is responsible for transforming the cleaned ledger into a relational analytical model.

The objectives are:

## 1. Business Entity Discovery

Identify all business entities represented in the dataset.

Examples may include:

- Invoice
- Client
- Engagement Type

---

## 2. Relationship Discovery

Determine how entities relate.

Examples:

```
Client

1

↓

Many

Invoices
```

Relationships must be justified using the data rather than assumptions.

---

## 3. Grain Enforcement

Identify the business grain.

The target grain is expected to be:

```
One row represents one invoice.
```

This assumption must be proven, not assumed.

If the grain cannot be proven, Phase 2 must stop and document the reason.

---

## 4. Fact / Dimension Separation

Classify every attribute as either:

- Fact
- Dimension
- Degenerate Dimension
- Descriptive Attribute

Every classification must be justified.

---

## 5. Star Schema Construction

Construct the first analytical model.

Expected deliverables include:

```
fact_engagement_billing

dim_client

dim_project_type
```

Additional dimensions may be introduced only if supported by the data.

---

## 6. Model Validation

Validate the completed model.

Validation should prove:

- Grain integrity
- Primary key uniqueness
- Relationship correctness
- Fact ownership
- Dimension ownership
- Measure consistency

---

# Explicit Non-Goals

Phase 2 is not responsible for:

- KPI definitions
- Business metrics
- Financial ratios
- Dashboard design
- Data visualization

Those belong to later phases.

---

# Deliverables Expected From Phase 2

The completion of Phase 2 should produce:

```
Entity Inventory

↓

Relationship Map

↓

Grain Definition

↓

Fact Table

↓

Dimension Tables

↓

Star Schema

↓

Model Validation Report
```

---

# Exit Criteria

Phase 2 is complete when:

✓ Every business entity has been identified.

✓ Every relationship has been justified.

✓ The analytical grain has been formally proven.

✓ Facts and dimensions have been separated.

✓ The star schema has been validated.

At this point the project becomes ready for semantic modeling and metric definition.

---

Status

```
Tutor 1 Phase 1

COMPLETE

Ready for Tutor 1 Phase 2
```