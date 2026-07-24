/*
===============================================================================
Project      : Fanisi Digital
Phase        : Tutor 1 - Phase 2 (Data Modeling)
File         : 03_fact_dimension_classification.sql

Purpose
-------
Classify every attribute in clean_invoice_ledger according to
dimensional modeling responsibilities.

Input
-----
clean_invoice_ledger

Outputs
-------
- Attribute classification evidence
- Fact ownership
- Dimension ownership

Exit Criteria
-------------
✓ Every attribute classified
✓ Every classification justified
✓ Candidate fact table identified

===============================================================================
*/

-- ============================================================================
-- Attribute Classification Evidence
-- ============================================================================

-- Business Event:
-- A billing event represented by a single invoice.

-- ============================================================================
-- Candidate Attribute Inventory
-- ============================================================================
--
-- invoice_id
-- client_name
-- engagement_type
-- description
-- invoice_date
-- payment_date
-- currency
-- payment_status
-- amount
-- notes
--

