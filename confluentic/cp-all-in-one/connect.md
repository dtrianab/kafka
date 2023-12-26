

https://docs.confluent.io/platform/current/connect/userguide.html#connect-installing-plugins

confluent-hub install confluentinc/kafka-connect-datagen:latest

It is already installed in image cnfldemos/cp-server-connect-datagen:0.6.0-7.3.0

https://docs.confluent.io/platform/current/connect/references/restapi.htmlcurl
https://curl.se/windows/


curl localhost:8083 | jq .
curl localhost:8083/connector-plugins | jq .
curl localhost:8083/connectors | jq .
curl -X GET http://localhost:8083/connectors
curl -X GET http://localhost:8083/connectors/connector_name/status|jq

# datagen_stocktrades_json_converter
Datagen connectors set to generate data using org apache string converter for key and org apache Json converter for value.
```bash
curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @datagen-producer/datagen_stocktrades_apache_json_converter.json | jq
curl -X GET http://localhost:8083/connectors/datagen_stocktrades_apache_json_converter/status | jq
curl -X DELETE http://localhost:8083/connectors/datagen_stocktrades_apache_json_converter
```

# sf_sink_stocktrades

```bash
curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @snowflake-sink/sf_sink_stocktrades_SnowflakeJson.json | jq

curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @snowflake-sink/sf_sink_stocktrades_SnowflakeJsonConverter.ok.json | jq

curl -X DELETE http://localhost:8083/connectors/sf_sink_stocktrades_SnowflakeJsonConverter
```