-- Dashboard Page 1: Overview
-- Visual: Total Records Processed
SELECT * FROM workspace.gold_ecommerce.audit_pipeline_runs;

-- Visual: KPI Cards
SELECT *
FROM gold_ecommerce.gold_kpis;

-- Visual: Monthly Revenue Trend
SELECT *
FROM gold_ecommerce.gold_monthly_sales;

-- Visual: Category Performance
SELECT *
FROM gold_ecommerce.gold_category_sales;

-- Visual: Payment Analysis
SELECT *
FROM gold_ecommerce.gold_payment_analysis;



-- Dashboard Page 2: Geographical
-- Visual: State Choropleth
-- creating view because databricks recognises state's full names and not short-forms
CREATE OR REPLACE VIEW gold_ecommerce.gold_state_sales_map AS
SELECT
    CASE buyer_state
        WHEN 'MH' THEN 'Maharashtra'
        WHEN 'DL' THEN 'Delhi'
        WHEN 'KA' THEN 'Karnataka'
        WHEN 'TN' THEN 'Tamil Nadu'
        WHEN 'AP' THEN 'Andhra Pradesh'
        WHEN 'GJ' THEN 'Gujarat'
        WHEN 'WB' THEN 'West Bengal'
        WHEN 'HR' THEN 'Haryana'
        WHEN 'UP' THEN 'Uttar Pradesh'
        WHEN 'RJ' THEN 'Rajasthan'
        WHEN 'MP' THEN 'Madhya Pradesh'
        WHEN 'PN' THEN 'Punjab'
        ELSE NULL
    END AS state_name,
    total_orders,
    total_revenue,
    avg_order_value
FROM gold_ecommerce.gold_state_sales
WHERE buyer_state <> 'Others';

SELECT *
FROM gold_ecommerce.gold_state_sales_maps


-- Visual: State Revenue
SELECT *
FROM gold_ecommerce.gold_state_sales;

-- Visual: Customer Membership by State
SELECT *
FROM gold_ecommerce.gold_subscription_sales;
