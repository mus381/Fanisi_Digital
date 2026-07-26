# Fanisi Digital
# Tutor 2 — Phase 1 Project Charter
## Semantic Blueprint Layer

Version: v1.0

---

# Project Context

Fanisi Digital is developed through a layered analytics architecture.

Each layer inherits validated outputs from the previous layer and may not silently redefine upstream decisions.

The complete analytics ecosystem is:

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

Tutor 2 itself is divided into multiple phases.

```
Phase 1
Semantic Blueprint
        │
        ▼
Phase 2
Relationship Intelligence
        │
        ▼
Phase 3
Business Metric Layer
        │
        ▼
...
```

This charter governs **Tutor 2 Phase 1**.

---

# Phase Mission

The purpose of Tutor 2 Phase 1 is to translate the validated analytical model into a business semantic blueprint.

The resulting blueprint becomes the authoritative business definition of the analytical model and serves as the semantic contract for all downstream layers.

This phase documents business meaning.

It does **not** redesign the analytical model.

---

# Inputs

Tutor 2 Phase 1 receives only validated outputs produced by Tutor 1.

## Analytical Model

```
fact_engagement_billing

dim_client

dim_project_type
```

---

## Supporting Artifacts

```
Entity Inventory

Relationship Map

Grain Validation Report

Fact / Dimension Classification

Star Schema

Model Validation Report
```

---

## Supporting Documentation

```
README.md

Tutor 1 Phase 2 Handoff

Tutor 2 Phase 1 Handoff

Business Rules

Data Profiling
```

---

# Phase Scope

Tutor 2 Phase 1 performs only the following work.

✓ Business Entity Inventory

✓ Business Vocabulary

✓ Business Object Definitions

✓ Measure Classification

✓ Attribute Classification

✓ Dimension Blueprint

✓ Grain Inheritance Validation

✓ Semantic Blueprint Construction

Everything else is outside scope.

---

# Phase Deliverables

Completion of this phase must produce:

```
Business Entity Inventory

↓

Business Vocabulary

↓

Business Definitions

↓

Measure Inventory

↓

Attribute Inventory

↓

Dimension Blueprint

↓

Grain Inheritance Report

↓

Semantic Blueprint v1.0
```

The semantic blueprint is the primary deliverable.

---

# Phase Invariants

The following rules must never be violated.

## 1

Tutor 1 remains the authoritative owner of the analytical model.

---

## 2

Business grain must be inherited exactly as validated.

---

## 3

Business relationships may not be redefined.

---

## 4

Fact ownership may not change.

---

## 5

Dimension ownership may not change.

---

## 6

Business terminology may evolve for clarity, but analytical meaning must remain unchanged.

---

## 7

Every semantic decision must be traceable to evidence produced by Tutor 1.

---

# Working Methodology

Tutor 2 operates using first-principles semantic analysis.

Every semantic object must answer the following questions.

```
What business object exists?

What business event does it represent?

What business language best describes it?

What analytical object owns it?

What analytical grain does it inherit?

Can business users understand this definition?

Which business questions can it answer?
```

Assumptions must be documented.

Unknowns must never be silently resolved.

---

# Explicit Non-Goals

Tutor 2 Phase 1 must not perform:

- SQL development
- Data cleaning
- Data modeling
- Star schema redesign
- Relationship implementation
- KPI definition
- Financial ratio calculation
- Dashboard design
- Data visualization
- BI tool configuration
- Currency conversion
- Date normalization

These responsibilities belong to later phases.

---

# Validation Requirements

The completed semantic blueprint must demonstrate:

✓ Every business entity has a documented definition.

✓ Every measure has a business owner.

✓ Every attribute has a business owner.

✓ Every dimension has a business definition.

✓ Business vocabulary is implementation independent.

✓ Grain inheritance matches Tutor 1.

✓ Every semantic decision is evidence-based.

---

# Success Criteria

Tutor 2 Phase 1 is complete only when:

✓ The semantic blueprint has been fully documented.

✓ Business terminology accurately reflects the validated analytical model.

✓ Every analytical object has a corresponding business definition.

✓ Grain inheritance has been formally validated.

✓ The semantic blueprint has passed semantic validation.

Only then may the project proceed to Relationship Intelligence.

---

# Expected Handoff

Upon completion, Tutor 2 Phase 1 hands over:

```
Semantic Blueprint v1.0

Business Entity Inventory

Business Vocabulary

Measure Catalog

Attribute Catalog

Dimension Blueprint

Grain Inheritance Report

Semantic Validation Report
```

These artifacts become the formal input contract for **Tutor 2 Phase 2 — Relationship Intelligence**.

---

Status

```
Tutor 2

Phase 1

READY TO BEGIN
```