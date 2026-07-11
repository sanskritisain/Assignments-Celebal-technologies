WITH driver_metrics AS (
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
        ROUND(
            SUM(completion_flag) * 100.0 / COUNT(trip_id),
            2
        ) AS completion_rate
    FROM silver_ride_data
    GROUP BY
        driver_id,
        driver_name,
        city,
        rating
)

SELECT
    *,
    DENSE_RANK() OVER (
        ORDER BY
            completion_rate DESC,
            total_revenue DESC,
            avg_delay_minutes ASC,
            rating DESC
    ) AS overall_driver_rank,

    DENSE_RANK() OVER (
        PARTITION BY city
        ORDER BY
            completion_rate DESC,
            total_revenue DESC,
            avg_delay_minutes ASC,
            rating DESC
    ) AS city_driver_rank

FROM driver_metrics
ORDER BY overall_driver_rank;
