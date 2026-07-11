SELECT
    city,
    COUNT(trip_id) AS total_trips,
    ROUND(SUM(fare_amount), 2) AS total_revenue,
    ROUND(AVG(fare_amount), 2) AS average_fare,
    ROUND(SUM(distance_km), 2) AS total_distance_km,
    ROUND(
        SUM(fare_amount) / COUNT(trip_id),
        2
    ) AS revenue_per_trip
FROM silver_ride_data
GROUP BY city
ORDER BY total_revenue DESC;
