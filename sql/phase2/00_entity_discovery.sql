/*
===============================================================================
Project      : Fanisi Digital
Phase        : Tutor 1 - Phase 2 (Data Modeling)
File         : 00_entity_discovery.sql

Purpose
-------
Identify every business entity represented in the
clean_invoice_ledger dataset.

Input
-----
clean_invoice_ledger

Outputs
-------
- Entity inventory
- Supporting evidence for each discovered entity

Dependencies
------------
Phase 1 validated dataset:
clean_invoice_ledger

Exit Criteria
-------------
✓ Every business entity identified
✓ Every entity justified using evidence
✓ Unknown entities documented

===============================================================================
*/



-- ============================================================================
-- Entity Discovery
-- ============================================================================

SELECT *
FROM clean_invoice_ledger
LIMIT 10;

-- ============================================================================
-- Candidate Entity Evidence
-- ============================================================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(invoice_id) AS populated_invoice_ids,
    COUNT(DISTINCT invoice_id) AS distinct_invoice_ids
FROM clean_invoice_ledger;

SELECT
    client_name,
    COUNT(*) AS invoice_count
FROM clean_invoice_ledger
GROUP BY client_name
ORDER BY invoice_count DESC;

SELECT
    engagement_type,
    COUNT(*) AS invoice_count
FROM clean_invoice_ledger
GROUP BY engagement_type
ORDER BY invoice_count DESC;

SELECT
    payment_status,
    COUNT(*) AS invoice_count
FROM clean_invoice_ledger
GROUP BY payment_status;