-- ==================================================
-- Fanisi Digital
-- Phase 1
-- Clean Revenue Ledger
-- ==================================================

-- Business Rules
--
-- BR-001
-- Only paid invoices represent realized revenue.
--
-- BR-002
-- VOID invoices are excluded.
--
-- BR-003
-- USD invoices are excluded from V0.5.
--
-- BR-004
-- Dates remain unchanged in V0.5.
--
-- BR-005
-- Duplicate invoice IDs are NOT removed yet.

COPY (

SELECT
    invoice_id,
    client_name,
    engagement_type,
    description,
    invoice_date,
    currency,
    amount,
    payment_status,
    payment_date,
    notes

FROM raw_invoices

WHERE
    UPPER(payment_status) = 'PAID'
    AND UPPER(currency) = 'KES'

)

TO 'results/clean_invoice_ledger.csv'
(HEADER, DELIMITER ',');