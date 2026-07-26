# Fanisi Digital
# Semantic Blueprint v1.0
## Business Semantic Contract

Version: v1.0

---

# Purpose
# Purpose

This document establishes the Business Semantic Layer for the Fanisi Digital analytics platform.

Its purpose is to translate the validated analytical model produced by Tutor 1 into business terminology that is understandable by business stakeholders while preserving analytical correctness.

This semantic blueprint serves as the authoritative business interpretation of the analytical model and becomes the semantic contract inherited by all downstream layers of the analytics ecosystem.

The semantic layer explains the analytical model. It does not redesign, extend, or reinterpret the analytical model established by Tutor 1.
---

# Scope
# Scope

Tutor 2 Phase 1 performs semantic interpretation only.

Within this scope, the semantic layer is responsible for:

- Defining business entities
- Establishing business vocabulary
- Providing business definitions
- Classifying measures and attributes
- Designing business-facing dimensions
- Validating grain inheritance
- Producing the Semantic Blueprint

Tutor 2 Phase 1 is explicitly not responsible for:

- SQL development
- Data cleaning
- Analytical data modeling
- Star schema redesign
- Relationship implementation
- KPI definition
- Financial calculations
- Dashboard development
- Data visualization

These responsibilities belong to later phases within the Fanisi Digital analytics architecture.
---

# Source Authority
# Source Authority

The semantic blueprint derives its authority exclusively from validated artifacts produced by Tutor 1.

Authoritative analytical inputs include:

- Analytical Model
    - fact_engagement_billing
    - dim_client
    - dim_project_type

- Entity Inventory

- Relationship Map

- Grain Validation Report

- Fact / Dimension Classification

- Star Schema

- Model Validation Report

Tutor 2 may translate analytical concepts into business language but must not alter analytical ownership, business relationships, or grain.

If a semantic interpretation cannot be supported by Tutor 1 evidence, it must not be introduced into this blueprint.
---

# Business Context
# Business Context

Fanisi Digital delivers professional services to clients through commercial engagements.

As work is completed, invoices are issued to request payment for those services. Each invoice represents a business billing event that records the value of work delivered to a client.

Tutor 1 models these billing events analytically.

Tutor 2 translates that analytical model into business language so that stakeholders can understand the business without requiring knowledge of SQL, database structures, or implementation details.

This semantic blueprint therefore represents the business interpretation of the validated analytical model.
---

# Business Process
# Business Process

The analytical model represents the Client Billing business process.

The business process follows the sequence below.

Client

↓

Engagement Agreed

↓

Service Delivered

↓

Invoice Issued

↓

Payment Received

↓

Revenue Recorded

Each invoice represents a business billing event within this process.

The semantic blueprint uses this process to provide business meaning for all entities, measures, and dimensions while preserving the analytical model validated by Tutor 1.
---

# Business Grain

---

# Business Entity Inventory

---

# Business Vocabulary

---

# Business Definitions

---

# Measure Inventory

---

# Attribute Inventory

---

# Dimension Blueprint

---

# Grain Inheritance Validation

---

# Semantic Validation

---

# Known Limitations

---

# Semantic Contract

---

# Handoff

---

# Status

