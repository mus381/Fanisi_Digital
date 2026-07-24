# Fanisi Digital
# Tutor 1 – Phase 2

## Star Schema

Version: v0.1

---

## Purpose

Define the dimensional model derived from the validated business process.

---

## Business Process

Client billing.

---

## Business Grain

One billing event per invoice.

---

## Fact Table

### fact_engagement_billing

Measures

- amount

Degenerate Dimensions

- invoice_id

Descriptive Attributes

- description
- currency
- payment_status
- notes

Role-Playing Date Attributes

- invoice_date
- payment_date

Foreign Keys

- client_key
- project_type_key

---

## Dimensions

### dim_client

Attributes

- client_key
- client_name

---

### dim_project_type

Attributes

- project_type_key
- engagement_type

---

## Relationship Diagram

```
                 dim_client
                      │
                      │
                      ▼
          fact_engagement_billing
                      ▲
                      │
                      │
             dim_project_type
```

---

## Design Notes

- Surrogate keys are used for dimensions.
- `invoice_id` remains a degenerate dimension.
- Duplicate invoice records remain an inherited operational limitation.
- Date normalization is deferred to a future phase.

---

## Exit Status

Star Schema Construction

**COMPLETE**

Ready for Model Validation.