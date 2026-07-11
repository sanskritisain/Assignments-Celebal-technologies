SELECT
    driver_id,
    driver_name,
    city,
    rating,
    COUNT(trip_id) AS total_trips,
    SUM(completion_flag) AS completed_trips,
    SUM(cancellation_flag) AS cancelled_trips,
    ROUND(AVG(delay_minutes), 2) AS avg_delay_minutes,
    ROUND(SUM(fare_amount), 2) AS total_revenue,
    ROUND(AVG(fare_amount), 2) AS avg_fare,
    ROUND(
        SUM(completion_flag) * 100.0 / COUNT(trip_id),
        2
    ) AS completion_rate,
    ROUND(
        SUM(cancellation_flag) * 100.0 / COUNT(trip_id),
        2
    ) AS cancellation_rate
FROM silver_ride_data
GROUP BY
    driver_id,
    driver_name,
    city,
    rating
ORDER BY total_revenue DESC;
