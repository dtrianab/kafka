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
