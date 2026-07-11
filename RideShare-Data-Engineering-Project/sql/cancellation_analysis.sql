SELECT
    driver_id,
    driver_name,
    city,
    COUNT(trip_id) AS total_trips,
    SUM(cancellation_flag) AS cancelled_trips,
    ROUND(
        SUM(cancellation_flag) * 100.0 / COUNT(trip_id),
        2
    ) AS cancellation_rate
FROM silver_ride_data
GROUP BY
    driver_id,
    driver_name,
    city
ORDER BY
    cancellation_rate DESC,
    cancelled_trips DESC;
