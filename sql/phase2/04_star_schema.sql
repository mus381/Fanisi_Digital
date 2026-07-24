/*
===============================================================================
Project      : Fanisi Digital
Phase        : Tutor 1 - Phase 2 (Data Modeling)
File         : 04_star_schema.sql

Purpose
-------
Define the dimensional star schema for Fanisi Digital.

Input
-----
Logical model validated in previous Phase 2 stages.

Outputs
-------
- Fact table definition
- Dimension table definitions
- Relationship definitions

Exit Criteria
-------------
✓ Fact table designed
✓ Dimension tables designed
✓ Relationships documented

===============================================================================
*/

-- ============================================================================
-- Star Schema
-- ============================================================================
--
--                   dim_client
--                        |
--                        |
--                        |
--             fact_engagement_billing
--                        |
--                        |
--                dim_project_type
--
-- Optional Role-Playing Dimension
--
-- dim_date
--   • invoice_date
--   • payment_date
--
-- ============================================================================

CREATE TABLE dim_client (

    client_key INTEGER,

    client_name VARCHAR

);

CREATE TABLE dim_project_type (

    project_type_key INTEGER,

    engagement_type VARCHAR

);

-- Define the fact table 

CREATE TABLE fact_engagement_billing (

    -- Foreign Keys
    client_key INTEGER NOT NULL,
    project_type_key INTEGER NOT NULL,
    invoice_date_key INTEGER,
    payment_date_key INTEGER,

    -- Degenerate Dimension
    invoice_id VARCHAR NOT NULL,

    -- Measure
    amount DECIMAL(18,2) NOT NULL,

    -- Event Attributes
    currency VARCHAR,
    payment_status VARCHAR,
    description VARCHAR,
    notes VARCHAR

);

-- ============================================================================
-- Relationships
-- ============================================================================
--
-- dim_client
--      1
--      |
--      |
--      *
-- fact_engagement_billing
--
--
-- dim_project_type
--      1
--      |
--      |
--      *
-- fact_engagement_billing
--