# Fanisi Digital
# Tutor 1 – Phase 2

## Relationship Map

Version: v0.1

---

## Purpose

This document records the validated relationships between the business entities
identified during Entity Discovery.

Evidence originates from:

sql/phase2/01_relationship_discovery.sql

---

# Relationship 1

## Client → Invoice

### Evidence

- Multiple clients are associated with multiple distinct invoices.
- No invoice is associated with more than one client.

### Cardinality

Client (1)

↓

Invoice (Many)

### Status

Validated

---

# Relationship 2

## Engagement Type → Invoice

### Evidence

- Each engagement type appears across many invoices.
- No invoice belongs to multiple engagement types.

### Cardinality

Engagement Type (1)

↓

Invoice (Many)

### Status

Validated

---

# Relationship Summary

| Parent Entity | Child Entity | Cardinality | Status |
|---------------|-------------|-------------|--------|
| Client | Invoice | 1 : Many | Validated |
| Engagement Type | Invoice | 1 : Many | Validated |

---

# Outstanding Issues

The following issues remain unresolved and are intentionally deferred:

- Duplicate invoice identifiers
- Client naming inconsistencies
- Missing client values

These do not invalidate the discovered relationships but may affect key selection.

---

## Exit Status

Relationship Discovery

**COMPLETE**

Ready for Grain Validation.