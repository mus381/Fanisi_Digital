-- ==================================================
-- Fanisi Digital
-- Phase 1
-- Investigation
-- ==================================================

-- --------------------------------------------------
-- Investigation 1 : Duplicate Invoice IDs
-- --------------------------------------------------

COPY (

SELECT *
FROM raw_invoices
WHERE invoice_id IN (
    SELECT invoice_id
    FROM raw_invoices
    GROUP BY invoice_id
    HAVING COUNT(*) > 1
)
ORDER BY invoice_id

)
TO 'results/investigation/duplicate_invoice_ids.csv'
(HEADER, DELIMITER ',');

-- --------------------------------------------------
-- Investigation 2 : Missing Amounts
-- --------------------------------------------------

COPY (

SELECT *
FROM raw_invoices
WHERE amount IS NULL

)
TO 'results/investigation/missing_amounts.csv'
(HEADER, DELIMITER ',');