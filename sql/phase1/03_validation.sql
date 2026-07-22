-- ==================================================
-- Validation
-- ==================================================

CREATE OR REPLACE VIEW clean_invoice_ledger AS
SELECT *
FROM read_csv_auto('results/clean_invoice_ledger.csv');

-- Total Rows
SELECT COUNT(*) AS clean_rows
FROM clean_invoice_ledger;

-- Total Revenue
SELECT
    SUM(amount) AS total_revenue
FROM clean_invoice_ledger;

-- Currency Check
SELECT
    currency,
    COUNT(*)
FROM clean_invoice_ledger
GROUP BY currency;

-- Payment Status Check
SELECT
    payment_status,
    COUNT(*)
FROM clean_invoice_ledger
GROUP BY payment_status;