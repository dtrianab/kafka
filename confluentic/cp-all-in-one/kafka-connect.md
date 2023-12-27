

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