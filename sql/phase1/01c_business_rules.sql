-- ==================================================
-- Business Rule Discovery
-- ==================================================

-- Payment Status Distribution
COPY (

SELECT
    payment_status,
    COUNT(*) AS invoice_count
FROM raw_invoices
GROUP BY payment_status
ORDER BY invoice_count DESC

)
TO 'results/investigation/payment_status_distribution.csv'
(HEADER, DELIMITER ',');

-- Currency Distribution
COPY (

SELECT
    currency,
    COUNT(*) AS invoice_count
FROM raw_invoices
GROUP BY currency
ORDER BY invoice_count DESC

)
TO 'results/investigation/currency_distribution.csv'
(HEADER, DELIMITER ',');