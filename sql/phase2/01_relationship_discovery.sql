/*
===============================================================================
Project      : Fanisi Digital
Phase        : Tutor 1 - Phase 2 (Data Modeling)
File         : 01_relationship_discovery.sql

Purpose
-------
Discover and validate relationships between business entities
identified during Entity Discovery.

Input
-----
clean_invoice_ledger

Outputs
-------
- Relationship evidence
- Relationship cardinalities
- Relationship map

Exit Criteria
-------------
✓ Every relationship justified by evidence
✓ Cardinality determined
✓ Unknown relationships documented

===============================================================================
*/

-- ============================================================================
-- Relationship Evidence
-- ============================================================================


-- ============================================================================
-- Can a client have multiple invoices
-- ============================================================================

SELECT
    client_name,
    COUNT(DISTINCT invoice_id) AS distinct_invoices
FROM clean_invoice_ledger
GROUP BY client_name
ORDER BY distinct_invoices DESC;

-- ============================================================================
-- Can one invoice belong to multiple clients
-- ============================================================================

SELECT
    invoice_id,
    COUNT(DISTINCT client_name) AS distinct_clients
FROM clean_invoice_ledger
GROUP BY invoice_id
HAVING COUNT(DISTINCT client_name) > 1;

-- ============================================================================
-- Can one engagement type appear on many invoices
-- ============================================================================

SELECT
    engagement_type,
    COUNT(DISTINCT invoice_id) AS distinct_invoices
FROM clean_invoice_ledger
GROUP BY engagement_type;

-- ============================================================================
-- Can one invoice have multiple engagement types
-- ============================================================================

SELECT
    invoice_id,
    COUNT(DISTINCT engagement_type) AS engagement_types
FROM clean_invoice_ledger
GROUP BY invoice_id
HAVING COUNT(DISTINCT engagement_type) > 1;