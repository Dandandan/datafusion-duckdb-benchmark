-- Single parquet file

CREATE EXTERNAL TABLE hits
STORED AS PARQUET
LOCATION 'hits.parquet';
