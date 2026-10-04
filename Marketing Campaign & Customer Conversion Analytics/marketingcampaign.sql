DROP DATABASE IF EXISTS MarketingAnalyticsDB;
CREATE DATABASE MarketingAnalyticsDB;
USE MarketingAnalyticsDB;
USE MarketingAnalyticsDB;

USE MarketingAnalyticsDB;

USE marketinganalyticsdb;

SELECT 
    c.channel,
    COUNT(f.lead_id) AS total_leads,
    SUM(f.converted) AS total_conversions,
    ROUND(SUM(f.converted) * 100.0 / COUNT(f.lead_id), 2) AS conversion_rate_pct,
    ROUND(SUM(f.ad_spend), 2) AS total_spend,
    ROUND(SUM(f.conversion_revenue), 2) AS total_revenue,
    ROUND(SUM(f.ad_spend) / NULLIF(SUM(f.converted), 0), 2) AS cpa
FROM lead_fact f
JOIN campaign_dimension c ON f.campaign_id = c.campaign_id
GROUP BY c.channel
ORDER BY total_revenue DESC;