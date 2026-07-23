# Fanisi Digital

## Business Rules

### Rule BR-001

Rule:
Only invoices with a successful payment represent realized revenue.

Status:
Draft

Evidence:
Payment Status Distribution

---

### Rule BR-002

Rule:
VOID invoices are excluded from revenue calculations.

Status:
Draft

Evidence:
Payment Status Distribution

---

### Rule BR-003

Rule:
USD invoices are excluded from V0.5 reporting.

Reason:
Currency conversion logic has not yet been implemented.

Status:
Draft

Evidence:
Currency Distribution

---

### Rule BR-004

Rule:
Invoice dates and payment dates remain strings during profiling.

Reason:
Date standardization belongs to the cleaning stage.

Status:
Draft

---

### Rule BR-005

Rule:
Duplicate invoice IDs require investigation before deduplication.

Status:
Draft

Evidence:
Duplicate Invoice Investigation