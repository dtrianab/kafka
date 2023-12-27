docker exec -ti broker /usr/bin/bash

kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092
kafka-topics.sh --describe --topic quickstart-events --bootstrap-server localhost:9092

kafka-topics --create --topic control-iceberg --bootstrap-server localhost:9092 --partitions 1

# Quick Start from Apache Web site [https://kafka.apache.org/quickstart]
kafka-topics --create --topic quickstart-events --bootstrap-server localhost:9092
kafka-topics --describe --topic quickstart-events --bootstrap-server localhost:9092
kafka-console-producer --topic quickstart-events --bootstrap-server localhost:9092

kafka-console-consumer --topic quickstart-events --from-beginning --bootstrap-server localhost:9092

