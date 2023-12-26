FROM cnfldemos/cp-server-connect-datagen:0.6.0-7.3.0
USER root:root


RUN mkdir -p /opt/kafka/my-external-configuration
#COPY /env/snowflake.propierties /opt/kafka/my-external-configuration/snowflake.propierties
RUN chmod -R 777 /opt/kafka/my-external-configuration/


# Load jar files and point plugin path to the folder
# COPY ./plugins/ /opt/kafka/plugins/
# ENV CONNECT_PLUGIN_PATH="/opt/kafka/plugins"

## Use confluent-hub to install plugins

# https://github.com/jcustenborder/kafka-connect-spooldir
# https://rmoff.net/2020/06/19/how-to-install-connector-plugins-in-kafka-connect/
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:latest

# https://github.com/snowflakedb/snowflake-kafka-connector/tree/master
RUN confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:1.8.1


# https://www.confluent.io/hub/tabular/iceberg-kafka-connect
# https://github.com/tabular-io/iceberg-kafka-connect
RUN confluent-hub install --no-prompt tabular/iceberg-kafka-connect:0.4.8

#https://www.confluent.io/hub/confluentinc/kafka-connect-s3
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-s3:10.5.7


USER 1001