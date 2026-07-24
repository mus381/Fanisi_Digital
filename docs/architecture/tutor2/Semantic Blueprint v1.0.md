# Fanisi Digital
# Semantic Blueprint v1.0
## Business Semantic Contract

Version: v1.0

---

# Purpose

This document establishes the business semantic layer for the Fanisi Digital analytics platform.

The semantic blueprint translates the validated analytical model produced by Tutor 1 into business terminology without altering analytical correctness.

It becomes the authoritative business interpretation of the analytical model and serves as the semantic contract inherited by all downstream analytics layers.

---

# Position Within the Analytics Ecosystem

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

This document is the primary deliverable of Tutor 2 Phase 1.

---

# Source Authority

The semantic blueprint is derived exclusively from validated Tutor 1 artifacts.

Authoritative inputs include:

```
fact_engagement_billing

dim_client

dim_project_type

Entity Inventory

Relationship Map

Grain Validation Report

Fact / Dimension Classification

Star Schema

Model Validation Report
```

No semantic object may contradict these inputs.

---

# Business Context

Fanisi Digital records billing events generated through client engagements.

Each invoice represents a business event in which work performed for a client results in billable revenue.

The analytical model captures these billing events.

The semantic layer explains them using business terminology.

---

# Business Process

The business process represented is:

```
Client Engagement

↓

Invoice Issued

↓

Payment Received

↓

Revenue Recorded
```

This process defines the semantic context for every business object.

---

# Business Grain

Inherited from Tutor 1.

```
One business event represents one invoice.
```

Every measure and attribute in this blueprint inherits this grain.

---

# Business Entity Inventory

## Client

### Business Definition

A customer that purchases services from Fanisi Digital.

### Analytical Owner

```
dim_client
```

### Business Questions

- Which clients generate the most revenue?
- Which clients purchase recurring services?
- How many invoices has each client received?

---

## Engagement

### Business Definition

The commercial service agreement delivered to a client.

Examples include:

```
Retainer

Fixed-Price Project
```

### Analytical Owner

```
dim_project_type
```

### Business Questions

- Which engagement types produce the highest revenue?
- Which engagement model is most common?

---

## Invoice

### Business Definition

A billing event requesting payment for work performed.

### Analytical Owner

```
fact_engagement_billing
```

Business Identifier

```
invoice_id
```

Business Grain

```
One invoice
```

---

# Measure Inventory

## Amount

Business Definition

Revenue recorded for an invoice.

Analytical Owner

```
fact_engagement_billing
```

Aggregation

```
SUM
```

Business Usage

- Total Revenue
- Revenue by Client
- Revenue by Engagement
- Revenue over Time

---

# Attribute Inventory

## Invoice Date

Business Meaning

Date the invoice was issued.

Owner

```
fact_engagement_billing

(invoice_date_key)
```

---

## Payment Date

Business Meaning

Date payment was received.

Owner

```
fact_engagement_billing

(payment_date_key)
```

---

## Currency

Business Meaning

Currency used for invoice settlement.

Owner

```
fact_engagement_billing
```

Current Scope

```
KES only
```

---

## Payment Status

Business Meaning

Operational status describing invoice settlement.

Owner

```
fact_engagement_billing
```

Current Valid Values

```
Paid
```

---

## Description

Business Meaning

Narrative describing work performed.

Owner

```
fact_engagement_billing
```

---

## Notes

Business Meaning

Operational annotations associated with the invoice.

Owner

```
fact_engagement_billing
```

---

# Dimension Blueprint

## Client Dimension

Business Name

```
Client
```

Purpose

Describe the customer associated with each billing event.

Primary Business Identifier

```
client_name
```

Relationship

```
One Client

↓

Many Billing Events
```

---

## Engagement Dimension

Business Name

```
Engagement Type
```

Purpose

Describe the commercial service delivered.

Primary Business Identifier

```
engagement_type
```

Relationship

```
One Engagement Type

↓

Many Billing Events
```

---

# Business Vocabulary

| Business Term | Meaning |
|--------------|---------|
| Client | Customer purchasing services |
| Engagement | Commercial service delivered |
| Invoice | Billing event |
| Billing Event | Revenue-generating transaction |
| Revenue | Monetary value recorded for an invoice |
| Payment | Settlement of an invoice |

---

# Grain Inheritance Validation

Tutor 2 inherits Tutor 1's validated analytical grain.

Validated grain:

```
One invoice represents one billing event.
```

No semantic object violates this grain.

Duplicate invoice identifiers remain documented operational limitations inherited from Tutor 1.

---

# Semantic Validation

The semantic blueprint has been validated against Tutor 1.

| Validation | Status |
|-----------|--------|
| Business entities documented | ✅ |
| Measures classified | ✅ |
| Attributes classified | ✅ |
| Dimensions documented | ✅ |
| Business vocabulary defined | ✅ |
| Grain inherited | ✅ |
| Traceability preserved | ✅ |

---

# Known Limitations

Inherited from Tutor 1.

```
Duplicate exported invoice records

Client name standardization deferred

Date normalization deferred

Currency conversion deferred
```

These limitations do not invalidate the semantic blueprint.

---

# Semantic Contract

This blueprint establishes the business meaning of the analytical model.

Downstream layers may extend business logic but must not redefine:

- Business entities
- Analytical ownership
- Business grain
- Measure ownership
- Dimension ownership

Any proposed change requires revisiting the analytical model.

---

# Handoff

This document becomes the formal input contract for:

```
Tutor 2

Phase 2

Relationship Intelligence
```

---

Status

```
Tutor 2

Phase 1

COMPLETE

Semantic Blueprint v1.0

READY FOR RELATIONSHIP INTELLIGENCE
```