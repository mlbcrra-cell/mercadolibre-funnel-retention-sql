/*
Project: MercadoLibre Funnel & Retention Analysis
Analysis: Retained Users by Country
Period: January 2025 - August 2025

Objective:
Compare the number of retained users across countries
at D7, D14, D21, and D28.
*/

SELECT
    country,

    COUNT(DISTINCT CASE
        WHEN day_after_signup >= 7
         AND active = 1
        THEN user_id
    END) AS users_d7,

    COUNT(DISTINCT CASE
        WHEN day_after_signup >= 14
         AND active = 1
        THEN user_id
    END) AS users_d14,

    COUNT(DISTINCT CASE
        WHEN day_after_signup >= 21
         AND active = 1
        THEN user_id
    END) AS users_d21,

    COUNT(DISTINCT CASE
        WHEN day_after_signup >= 28
         AND active = 1
        THEN user_id
    END) AS users_d28

FROM mercadolibre_retention

GROUP BY country

ORDER BY country;
