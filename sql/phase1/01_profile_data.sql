-- ==================================================
-- Fanisi Digital
-- Phase 1
-- Data Profiling
-- ==================================================

-- Total number of rows

SELECT COUNT(*) AS total_rows
FROM raw_invoices;

-- ==================================================
-- Schema Inspection
-- ==================================================

DESCRIBE raw_invoices;

-- ==================================================
-- Payment Status Distribution
-- ==================================================

SELECT
    payment_status,
    COUNT(*) AS total_invoices
FROM raw_invoices
GROUP BY payment_status
ORDER BY total_invoices DESC;

-- ==================================================
-- Currency Distribution
-- ==================================================

SELECT
    currency,
    COUNT(*) AS total_invoices
FROM raw_invoices
GROUP BY currency
ORDER BY total_invoices DESC;

-- ==================================================
-- Duplicate Invoice IDs
-- ==================================================

SELECT
    invoice_id,
    COUNT(*) AS occurrences
FROM raw_invoices
GROUP BY invoice_id
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;


-- ==================================================
-- Null Audit
-- ==================================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(invoice_id) AS invoice_ids,
    COUNT(invoice_date) AS invoice_dates,
    COUNT(payment_date) AS payment_dates,
    COUNT(amount) AS amounts,
    COUNT(currency) AS currencies,
    COUNT(payment_status) AS payment_statuses
FROM raw_invoices;