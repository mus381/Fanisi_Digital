SELECT *
FROM raw_invoices
WHERE invoice_id IN (
    SELECT invoice_id
    FROM raw_invoices
    GROUP BY invoice_id
    HAVING COUNT(*) > 1
)
ORDER BY invoice_id;



SELECT *
FROM raw_invoices
WHERE amount IS NULL;