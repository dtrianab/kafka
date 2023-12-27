# Case 1: Sink data from datagen-stocktrades

This connector generates with:
```json
      "key.converter": "org.apache.kafka.connect.storage.StringConverter",
      "value.converter": "org.apache.kafka.connect.json.JsonConverter",
```

The Snowflake converters are matched to:
```json
      "key.converter":"org.apache.kafka.connect.storage.StringConverter",
      "value.converter":"com.snowflake.kafka.connector.records.SnowflakeJsonConverter",
```
# sf_sink_stocktrades

```bash
curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @snowflake-sink/sf_sink_stocktrades_SnowflakeJson.json | jq

curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @snowflake-sink/sf_sink_stocktrades_SnowflakeJsonConverter.ok.json | jq

curl -X DELETE http://localhost:8083/connectors/sf_sink_stocktrades_SnowflakeJsonConverter
```