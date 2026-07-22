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