Example at https://github.com/tabular-io/iceberg-kafka-connect

# control-iceberg topic

kafka-topics --create --topic control-iceberg --bootstrap-server localhost:9092 --partitions 1


This example writes all incoming records to a single table.

Create the destination table
CREATE TABLE default.events (
    id STRING,
    type STRING,
    ts TIMESTAMP,
    payload STRING)
PARTITIONED BY (hours(ts))

