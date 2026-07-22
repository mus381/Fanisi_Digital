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

-- ============================================================================
-- Remaining Candidate Analysis
-- ============================================================================

SELECT
    currency,
    COUNT(*) AS invoice_count
FROM clean_invoice_ledger
GROUP BY currency
ORDER BY invoice_count DESC;

SELECT
    COUNT(*) AS total_rows,
    COUNT(invoice_date) AS populated_dates,
    COUNT(DISTINCT invoice_date) AS distinct_dates
FROM clean_invoice_ledger;

SELECT
    COUNT(*) AS total_rows,
    COUNT(payment_date) AS populated_payment_dates,
    COUNT(DISTINCT payment_date) AS distinct_payment_dates
FROM clean_invoice_ledger;

SELECT
    MIN(amount) AS minimum_amount,
    MAX(amount) AS maximum_amount,
    AVG(amount) AS average_amount
FROM clean_invoice_ledger;

SELECT
    description,
    COUNT(*) AS invoice_count
FROM clean_invoice_ledger
GROUP BY description
ORDER BY invoice_count DESC;

SELECT
    COUNT(*) AS total_rows,
    COUNT(notes) AS populated_notes
FROM clean_invoice_ledger;

SELECT
    notes,
    COUNT(*) AS occurrences
FROM clean_invoice_ledger
WHERE notes IS NOT NULL
GROUP BY notes
ORDER BY occurrences DESC;