/*
===============================================================================
Project      : Fanisi Digital
Phase        : Tutor 1 - Phase 2 (Data Modeling)
File         : 02_grain_validation.sql

Purpose
-------
Determine the true analytical grain of clean_invoice_ledger.

Input
-----
clean_invoice_ledger

Outputs
-------
- Grain validation evidence
- Duplicate analysis
- Candidate business key evaluation

Exit Criteria
-------------
✓ Grain formally identified
✓ Candidate business key evaluated
✓ Duplicate behavior documented

===============================================================================
*/

-- ============================================================================
-- Grain Validation Evidence
-- ============================================================================

-- ============================================================================
-- Does one row represent one invoice
-- ============================================================================

SELECT
    invoice_id,
    COUNT(*) AS row_count
FROM clean_invoice_ledger
GROUP BY invoice_id
HAVING COUNT(*) > 1
ORDER BY row_count DESC, invoice_id;

-- ============================================================================
-- determine why they are duplicated.
-- ============================================================================

SELECT *
FROM clean_invoice_ledger
WHERE invoice_id IN (
    SELECT invoice_id
    FROM clean_invoice_ledger
    GROUP BY invoice_id
    HAVING COUNT(*) > 1
)
ORDER BY invoice_id;

-- ============================================================================
-- determine how widespread the issue is.
-- ============================================================================

SELECT
    COUNT(DISTINCT invoice_id) AS duplicated_invoice_ids
FROM (
    SELECT invoice_id
    FROM clean_invoice_ledger
    GROUP BY invoice_id
    HAVING COUNT(*) > 1
);

-- ============================================================================
-- Test Candidate Business Keys
-- Adding client_name to see if it resolves the duplicates.
-- ============================================================================


SELECT
    invoice_id,
    client_name,
    COUNT(*) AS occurrences
FROM clean_invoice_ledger
GROUP BY invoice_id, client_name
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;