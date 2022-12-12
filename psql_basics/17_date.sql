SELECT
    NOW() AS current_date_time;

SELECT
    NOW() :: time AS current_time;

SELECT
    NOW() :: DATE AS current_date;

SELECT
    NOW() - INTERVAL '10 YEARS' --subtracting 10 years from current time
SELECT
    NOW() - INTERVAL '10 YEARS' --adding 10 years from current time