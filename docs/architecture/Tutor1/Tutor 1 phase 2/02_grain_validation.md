# Fanisi Digital
# Tutor 1 – Phase 2

## Grain Validation

Version: v0.1

---

## Purpose

Validate the analytical grain of `clean_invoice_ledger`.

Evidence originates from:

`sql/phase2/02_grain_validation.sql`

---

## Expected Grain

One row represents one invoice.

---

## Evidence Summary

- Dataset rows: 225
- Distinct invoice IDs: 214
- Duplicate invoice IDs: 11

Inspection of duplicate records shows that each duplicate pair is identical across all available attributes.

No evidence was found that duplicates represent distinct business events.

---

## Grain Assessment

### Physical Grain

One row represents one exported record.

The dataset contains duplicate exported records.

### Business Grain

One invoice represents one billing event.

The observed duplicates appear to be duplicate records rather than separate business events.

---

## Modeling Decision

The analytical grain for downstream dimensional modeling is defined as:

> **One billing event per invoice.**

This decision is accepted with the explicit limitation that the operational dataset contains duplicate records requiring future remediation.

---

## Outstanding Risks

- Invoice IDs are not physically unique.
- Fact table construction must account for duplicate exported records.
- Primary key strategy requires careful consideration during star schema construction.

---

## Exit Status

Grain Validation

**COMPLETE**

Ready for Fact / Dimension Classification.