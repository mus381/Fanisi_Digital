# Fanisi Digital Data Profiling

## Dataset

fanisi_digital_raw_invoice_export.csv

---

## Total Rows

289


## Findings

### Payment Status

Observed values:

- Paid
- paid
- PAID
- Pending
- pending
- PENDING
- Unpaid
- VOID
- Void

Observation:

Payment status capitalization is inconsistent.


## Investigation

### Duplicate Invoice IDs

- 14 invoice IDs occur twice.
- Cause: Pending investigation.

### Missing Amounts

- 6 rows have NULL amounts.
- Cause: Pending investigation.