/*
===============================================================================
Project      : Fanisi Digital
Phase        : Tutor 1 - Phase 2 (Data Modeling)
File         : 05_model_validation.sql

Purpose
-------
Validate that the analytical model satisfies the requirements of
Tutor 1 Phase 2.

Input
-----
clean_invoice_ledger

Outputs
-------
- Validation evidence
- Model integrity checks

Exit Criteria
-------------
✓ Grain validated
✓ Relationships validated
✓ Dimension ownership validated
✓ Fact ownership validated

===============================================================================
*/

-- ============================================================================
-- Model Validation
-- ============================================================================

-- Confirm the dataset size
SELECT
    COUNT(*) AS total_rows
FROM clean_invoice_ledger;

--Confirm invoice identifiers.

SELECT

    COUNT(*) AS total_rows,

    COUNT(DISTINCT invoice_id) AS distinct_invoice_ids

FROM clean_invoice_ledger;

-- Validate the candidate dimensions.

SELECT

    COUNT(DISTINCT client_name) AS distinct_clients,

    COUNT(DISTINCT engagement_type) AS distinct_project_types

FROM clean_invoice_ledger;

-- Validate the measure.

SELECT

    MIN(amount) AS minimum_amount,

    MAX(amount) AS maximum_amount,

    AVG(amount) AS average_amount

FROM clean_invoice_ledger;

-- Validate relationship assumptions.

SELECT

    COUNT(*)

FROM (

    SELECT invoice_id

    FROM clean_invoice_ledger

    GROUP BY invoice_id

    HAVING COUNT(DISTINCT client_name) > 1

) x;

