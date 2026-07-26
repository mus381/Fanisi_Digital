# Fanisi Digital
# Tutor 1 – Phase 2

## Fact / Dimension Classification

Version: v0.1

---

## Purpose

Assign every attribute in `clean_invoice_ledger` to its analytical owner.

Evidence is based on:

- Entity Discovery
- Relationship Discovery
- Grain Validation

---

| Attribute | Classification | Owner | Justification |
|-----------|----------------|-------|---------------|
| invoice_id | Degenerate Dimension | Fact | Identifies the billing event but contains no descriptive attributes. |
| client_name | Dimension Attribute | Client | Describes the client participating in the billing event. |
| engagement_type | Dimension Attribute | Engagement Type | Describes the classification of work performed. |
| description | Descriptive Attribute | Fact | Describes the specific invoice/event. |
| invoice_date | Dimension Attribute | Date | Describes when the billing event occurred. |
| payment_date | Dimension Attribute | Date | Describes when payment occurred. |
| currency | Descriptive Attribute | Fact | Single operational value (KES) in Version 0.5. |
| payment_status | Descriptive Attribute | Fact | Operational status retained for lineage; analytically constant after Phase 1 filtering. |
| amount | Measure | Fact | Numeric value to aggregate and analyze. |
| notes | Descriptive Attribute | Fact | Sparse operational notes tied to the invoice event. |

---

## Candidate Fact Table

`fact_engagement_billing`

Business grain:

> One billing event per invoice.

---

## Candidate Dimensions

- `dim_client`
- `dim_project_type`
- `dim_date` *(role-playing: Invoice Date, Payment Date)*

---

## Outstanding Design Decisions

- Surrogate key strategy
- Duplicate invoice handling during fact loading
- Client business key selection

---

## Exit Status

Fact / Dimension Classification

**COMPLETE**

Ready for Star Schema Construction.