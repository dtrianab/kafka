https://github.com/confluentinc/kafka-connect-datagen


# Json Examples
https://github.com/confluentinc/kafka-connect-datagen/tree/master/config

# stocktrades_json
Datagen connectors set to generate data using org apache string converter for key and org apache Json converter for value.
```bash
curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @datagen/stocktrades_json.json | jq
curl -X GET http://localhost:8083/connectors/stocktrades_json/status | jq
curl -X DELETE http://localhost:8083/connectors/stocktrades_json
```

# stocktrades_json
Datagen connectors set to generate data using org apache string converter for key and org apache Json converter for value.
```bash
curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @datagen/stocktrades_avro.json | jq
curl -X GET http://localhost:8083/connectors/stocktrades_avro/status | jq
curl -X DELETE http://localhost:8083/connectors/stocktrades_avro
```