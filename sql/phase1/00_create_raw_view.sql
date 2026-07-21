CREATE OR REPLACE VIEW raw_invoices AS
SELECT *
FROM read_csv_auto('data/raw/fanisi_digital_raw_invoice_export.csv');