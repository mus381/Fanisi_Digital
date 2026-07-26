# Fanisi Digital
# Tutor 1 – Phase 2

## Entity Inventory

Version: v0.1

---

## Purpose

This document records every business entity identified within
`clean_invoice_ledger`.

All conclusions are derived from SQL evidence collected in
`00_entity_discovery.sql`.

---

## Candidate Review

| Candidate | Decision | Evidence | Notes |
|-----------|----------|----------|-------|
| Invoice | Entity | Every row references an invoice. Invoice IDs exist for all records. | Duplicate invoice IDs require grain validation. |
| Client | Entity | Clients appear across multiple invoices. | Client names are operational values and are not reliable business keys due to inconsistent casing and whitespace. |
| Engagement Type | Entity | Two recurring engagement classifications are observed across the dataset. | Candidate dimension. |
| Payment Status | Attribute | Only indicates invoice state. | No independent business identity. |
| Currency | Attribute | Single value (KES) across all invoices. | Does not justify a separate dimension in Version 0.5. |
| Invoice Date | Attribute | Describes when the invoice event occurred. | Candidate role-playing date in future models. |
| Payment Date | Attribute | Describes when payment occurred. | Candidate role-playing date in future models. |
| Amount | Measure | Numeric business value associated with invoice events. | Candidate fact measure. |
| Description | Attribute | Describes the work performed. | Descriptive attribute of the invoice event. |
| Notes | Attribute | Sparse operational annotations. | Not a business entity. |

---

## Proven Business Entities

The following business entities have been identified:

- Invoice
- Client
- Engagement Type

---

## Outstanding Questions

The following issues remain unresolved and will be addressed in subsequent stages:

- Duplicate invoice identifiers
- Analytical grain validation
- Business key selection for Client

---

## Exit Status

Entity Discovery:

**COMPLETE**

Ready for Relationship Discovery.