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
# Business Entity Inventory

The semantic layer exposes business entities rather than analytical tables.

Each business entity represents a real-world concept supported by the validated analytical model.

---

## Entity: Client

### Business Definition

A client is an individual or organization that purchases services from Fanisi Digital.

### Analytical Owner

dim_client

### Business Role

The client is the customer participating in the billing process.

### Inherited Grain

One client may participate in many billing events.

### Business Questions

- Which clients generate the most revenue?
- Which clients receive the most invoices?
- Which clients purchase different engagement types?

---

## Entity: Engagement Type

### Business Definition

An engagement type describes the commercial service delivered to a client.

Examples include:

- Retainer
- Fixed-Price Project

### Analytical Owner

dim_project_type

### Business Role

The engagement type classifies the service associated with each billing event.

### Inherited Grain

One engagement type may appear across many billing events.

### Business Questions

- Which engagement types generate the highest revenue?
- Which engagement type is most common?

---

## Entity: Invoice

### Business Definition

An invoice represents a billing event requesting payment for services delivered to a client.

### Analytical Owner

fact_engagement_billing

### Business Identifier

invoice_id

### Business Role

The invoice records the business event captured by the analytical model.

### Inherited Grain

One invoice represents one billing event.

### Business Questions

- How many invoices have been issued?
- What revenue has been billed?
- What is the payment status of each invoice?
---

# Business Vocabulary
# Business Vocabulary

The Business Vocabulary establishes the canonical language used throughout the Fanisi Digital analytics ecosystem.

Business terminology is independent of implementation technology and remains stable across analytical, financial, and presentation layers.

| Business Term | Business Definition | Analytical Reference |
|--------------|---------------------|----------------------|
| Client | An individual or organization purchasing services from Fanisi Digital. | dim_client |
| Engagement Type | The category of commercial service delivered to a client. | dim_project_type |
| Invoice | A billing document requesting payment for services delivered. | fact_engagement_billing |
| Billing Event | The business event represented by a single invoice. | fact_engagement_billing |
| Revenue | Monetary value billed through an invoice. | amount |
| Payment | Settlement of an issued invoice. | payment_date_key / payment_status |
| Invoice Date | The date an invoice is issued. | invoice_date_key |
| Payment Date | The date payment is received for an invoice. | payment_date_key |
| Currency | The monetary denomination used on the invoice. | currency |
| Payment Status | The operational state of an invoice's settlement. | payment_status |
| Description | Narrative explaining the work performed. | description |
| Notes | Operational comments associated with an invoice. | notes |
---

# Business Definitions

---

# Measure Inventory
# Measure Inventory

Measures represent quantitative business values that may be aggregated to answer business questions.

| Business Measure | Business Definition | Aggregation | Analytical Owner | Business Grain |
|------------------|---------------------|-------------|------------------|----------------|
| Amount | Monetary value billed on an invoice. | SUM | fact_engagement_billing | One invoice = one billing event |

Current validated measures inherited from Tutor 1:

- Amount
---

# Attribute Inventory
# Attribute Inventory

Attributes provide business context for measures but are not themselves aggregated.

| Business Field | Classification | Business Purpose | Analytical Owner |
|----------------|----------------|------------------|------------------|
| invoice_id | Business Identifier (Degenerate Dimension) | Identifies a billing event. | fact_engagement_billing |
| client_name | Attribute | Identifies the customer associated with the billing event. | dim_client |
| engagement_type | Attribute | Classifies the commercial service delivered. | dim_project_type |
| invoice_date_key | Attribute | Records the invoice issue date. | fact_engagement_billing |
| payment_date_key | Attribute | Records the payment receipt date. | fact_engagement_billing |
| currency | Attribute | Records the invoice currency. | fact_engagement_billing |
| payment_status | Attribute | Records the operational settlement status. | fact_engagement_billing |
| description | Attribute | Describes the work performed. | fact_engagement_billing |
| notes | Attribute | Stores operational comments associated with the billing event. | fact_engagement_billing |
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

