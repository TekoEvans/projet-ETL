SELECT  tpep_pickup_datetime, tpep_dropoff_datetime, trip_distance, passenger_count, total_amount
FROM  {{source('taxi_trips', 'raw_Yellow_taxi_trip_data')}}
WHERE 1= 1
LIMIT 10