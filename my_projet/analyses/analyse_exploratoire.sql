SELECT DISTINCT RatecodeID FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'; 
SELECT COUNT(*) FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet';
  SELECT
    VendorID, 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-11.parquet'
  GROUP BY VendorID;

  SELECT 
    RatecodeID, 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
  GROUP BY RatecodeID;
   SELECT 
    payment_type, 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
  GROUP BY payment_type;


  SELECT 
    store_and_fwd_flag, 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
  GROUP BY store_and_fwd_flag;

 
  SELECT 
    DOLocationID, 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
  GROUP BY DOLocationID;
 
  SELECT 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
    WHERE 1= 1
    AND tpep_pickup_datetime > tpep_dropoff_datetime
    ;
 
  SELECT 
    *
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
    WHERE 1= 1
    AND tpep_pickup_datetime > tpep_dropoff_datetime
    LIMIT 10
    ;
 SELECT 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
    WHERE 1= 1
    AND trip_distance <= 0;

 SELECT 
    tpep_pickup_datetime ,tpep_dropoff_datetime, trip_distance,passenger_count,total_amount
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
    WHERE 1= 1
    AND trip_distance <= 0
    LIMIT 10
  
    ;
 SELECT 
    COUNT(*) AS trip_count
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
    WHERE 1= 1
    AND total_amount <= 0;

 SELECT 
    tpep_pickup_datetime ,tpep_dropoff_datetime, trip_distance,passenger_count,total_amount
  FROM  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-12.parquet'
    WHERE 1= 1
    AND total_amount <= 0
    LIMIT 10
  
    ;

 -- . read './analyses/analyse_exploratoire.sql'  