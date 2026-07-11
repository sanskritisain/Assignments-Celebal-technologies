SELECT
    driver_id,
    driver_name,
    city,
    COUNT(trip_id) AS total_trips,
    ROUND(AVG(delay_minutes), 2) AS avg_delay_minutes,
    MAX(delay_minutes) AS max_delay_minutes,
    SUM(
        CASE
            WHEN delay_minutes > 0 THEN 1
            ELSE 0
        END
    ) AS delayed_trips,
    ROUND(
        SUM(
            CASE
                WHEN delay_minutes > 0 THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(trip_id),
        2
    ) AS delay_rate
FROM silver_ride_data
GROUP BY
    driver_id,
    driver_name,
    city
ORDER BY avg_delay_minutes DESC;
