# Fanisi Digital
# Alpha Module 1–2 Specification
## Financial Domain Layer

Version: v1.0

---

# Purpose

This specification governs Alpha Module 1–2.

Alpha Module 1–2 is the first applied financial analysis stage in the Fanisi Digital architecture.

Its purpose is to validate financial reliability, classify revenue correctly, separate commercial segments, explain margin behavior, and produce reusable metric definitions from the cleaned data.

---

# Position Within the Analytics Ecosystem

DATA LAYER (Tutor 1)
        │
        ▼
SEMANTIC LAYER (Tutor 2)
        │
        ▼
EXECUTIVE INFORMATION LAYER (Tutor 3 Phase 1)
        │
        ▼
FINANCIAL DOMAIN LAYER (Alpha Module 1–2)
        │
        ▼
EXECUTIVE PRESENTATION LAYER (Later Tutor 3 Phases)

---

# Mission Statement

Transform cleaned operational data into financially defensible domain outputs.

Alpha Module 1–2 must determine:

- whether the financial statements are reliable enough for analysis
- whether compliance-related costs are understated
- how USD-invoiced international revenue should be treated
- how performance differs between fixed-price projects and retainers
- what explains observed variances
- which metric definitions are required to preserve analytical consistency

---

# Required Analytical Tasks

## 1. Four-Point Statement Reliability Diagnostic
Run a structured reliability check against the cleaned Fanisi Digital data.

The diagnostic must confirm whether the dataset is fit for financial interpretation.

Minimum dimensions of review:
- completeness
- classification correctness
- temporal consistency
- reconciliation / cross-foot integrity

## 2. Compliance-Cost Understatement Check
Test whether compliance-related costs are understated, missing, misclassified, or deferred in a way that distorts margin.

## 3. Net Revenue Treatment for USD-Invoiced International Clients
Determine the correct revenue treatment for USD-denominated international invoices.

This must be documented as a financial classification decision, not guessed.

## 4. Segmented P&L
Build a segmented profit and loss view for:
- fixed-price projects
- retainers

Each segment must include gross margin.

## 5. Variance Analysis
Perform real variance analysis with:
- price / volume decomposition
- controllable versus non-controllable classification
- root cause explanation

## 6. Metric Definition Entries
Document every validated finding using the Module 2 metric definition format.

---

# Trusted Inputs

Alpha Module 1–2 accepts only validated upstream artifacts.

## Tutor 1 Inputs
- analytical model
- fact_engagement_billing
- dim_client
- dim_project_type
- grain validation
- relationship map
- fact / dimension classification
- model validation report

## Tutor 2 Inputs
- semantic blueprint
- business vocabulary
- business entity inventory
- measure inventory
- attribute inventory
- dimension blueprint
- semantic validation report

## Tutor 3 Inputs
- information hierarchy blueprint
- business question inventory
- executive attention hierarchy
- visual encoding recommendations
- reading flow
- hierarchy validation report

## Working Data
- cleaned Fanisi Digital dataset
- any validated intermediate outputs
- controlled analysis tables created from the cleaned data

---

# Analytical Responsibilities

Alpha Module 1–2 performs:

- financial diagnostics
- classification decisions
- margin analysis
- segment analysis
- variance analysis
- metric definition writing
- evidence-based financial interpretation

Alpha Module 1–2 does not perform visualization design or dashboard implementation.

---

# Design Principles

## Principle 1: Evidence First
Every financial claim must trace to a validated input or a reproducible calculation.

## Principle 2: Classification Before Calculation
Revenue and cost treatment must be decided before margin and variance outputs are finalized.

## Principle 3: Segmentation Must Be Stable
Segments must be defined consistently so that gross margin comparisons remain meaningful.

## Principle 4: Variance Must Be Explainable
Every variance must be classified as controllable or non-controllable where evidence permits.

## Principle 5: Unknowns Must Stay Explicit
If the data cannot support a conclusion, the module must mark it unresolved rather than inventing certainty.

## Principle 6: Downstream Reuse Matters
All outputs must be written so later layers can consume them without reinterpretation.

---

# Required Outputs

Alpha Module 1–2 shall produce the following artifacts:

## Diagnostic Outputs
- Four-Point Statement Reliability Diagnostic
- Compliance-Cost Understatement Assessment
- Net Revenue Treatment Memo

## Financial Outputs
- Segmented P&L
- Gross Margin by Segment
- Variance Analysis
- Price / Volume Decomposition
- Controllable vs Non-Controllable Classification

## Documentation Outputs
- Metric Definition Entries
- Analytical Assumptions Register
- Exception Log
- Alpha Domain Layer Handoff

---

# Explicit Non-Goals

Alpha Module 1–2 must not:

- alter upstream data model definitions
- change grain or keys
- create new semantic entities
- build dashboards
- design visual layouts
- write presentation copy
- calculate unsupported metrics
- backfill missing evidence with guesswork
- silently reclassify transactions without documentation

---

# Evidence Requirements

Every decision must reference one or more of the following:

- Tutor 1 validation outputs
- Tutor 2 semantic outputs
- Tutor 3 hierarchy outputs
- cleaned Fanisi Digital data
- documented calculation steps

Any contradiction must be documented and escalated, not hidden.

---

# Validation Questions

Every major finding must answer:

- What is the observed fact?
- What evidence supports it?
- What classification decision was made?
- What is the financial consequence?
- What remains uncertain?
- What should downstream layers inherit?

---

# Exit Criteria

Alpha Module 1–2 is complete only when:

- statement reliability has been assessed
- compliance-cost understatement has been checked
- USD revenue treatment is documented
- segmented P&L is complete
- gross margin is calculated by segment
- variance analysis is complete
- root causes are assigned where possible
- metric definitions are written
- the output is traceable and auditable
- the handoff to the Alpha Domain Layer is complete

---

# Status

Alpha Module 1–2
READY FOR EXECUTION