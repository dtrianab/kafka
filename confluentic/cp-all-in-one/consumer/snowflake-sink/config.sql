USE ROLE SYSADMIN;
CREATE DATABASE IF NOT EXISTS kafka_db;
CREATE SCHEMA IF NOT EXISTS kafka_db.kafka_schema;


-- Use a role that can create and manage roles and privileges.
USE ROLE securityadmin;
USE SCHEMA kafka_db.kafka_schema;

-- Create a Snowflake role with the privileges to work with the connector.
CREATE ROLE kafka_connector_role_1;


-- Grant privileges on the database.
GRANT USAGE ON DATABASE kafka_db TO ROLE kafka_connector_role_1;

-- Grant privileges on the schema.
GRANT USAGE ON SCHEMA kafka_db.kafka_schema TO ROLE kafka_connector_role_1;
GRANT CREATE TABLE ON SCHEMA kafka_db.kafka_schema TO ROLE kafka_connector_role_1;
GRANT CREATE STAGE ON SCHEMA kafka_db.kafka_schema TO ROLE kafka_connector_role_1;
GRANT CREATE PIPE ON SCHEMA kafka_db.kafka_schema TO ROLE kafka_connector_role_1;

-- Only required if the Kafka connector will load data into an existing table.
--GRANT OWNERSHIP ON TABLE existing_table1 TO ROLE kafka_connector_role_1;

-- Only required if the Kafka connector will stage data files in an existing internal stage: (not recommended).
GRANT READ, WRITE ON STAGE existing_stage1 TO ROLE kafka_connector_role_1;

-- Grant the custom role to an existing user.
-- Set the custom role as the default role for the user.
-- If you encounter an 'Insufficient privileges' error, verify the role that has the OWNERSHIP privilege on the user.
USE ROLE ACCOUNTADMIN;
CREATE USER kafka_connector_user_1;
GRANT ROLE kafka_connector_role_1 TO USER kafka_connector_user_1;
ALTER USER kafka_connector_user_1 SET RSA_PUBLIC_KEY='MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkf1dxp/0ri0X30jvtRA1
dAW2DnP+ORrh0HUXpFb5/c49J/NT6yT0qqPT/RkVGUMbvLAsdXq6rc0wvwWCQpX4
3vBBA2cuSJcKlwkMgpm6l7XtXOis3ZdlxSCQadMl7M0Bbn0vEPVaMKsK9gbq4z8A
ZPsDCV/5M+f+P4gnY3qu+rta7P1xlkMh7z0WdwWASKC70RK9K3dMPNZuylSSZgO3
fIbH85oOF/u6cVovA/JnI/L160a7t9VMsUfeeMN6t5pbyYc4EMo5eeG1UQtJjYEA
5PZvYbAOBrwyUTkXK2IIfulF1Hi8SajnnBB2iRy9A7jhyGIkPHRHxmvQzTxgzsOt
hwIDAQAB';

ALTER USER kafka_connector_user_1 SET DEFAULT_ROLE = kafka_connector_role_1;
ALTER USER kafka_connector_user_1 SET DEFAULT_NAMESPACE = 'kafka_db.kafka_schema';
DESC USER kafka_connector_user_1;