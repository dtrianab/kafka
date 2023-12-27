# Config stored at
- Windows> C:\Users\dtb_f\.snowsql\config

snowsql -c tk53520
snowsql -c tk53520 -f config.sql -o output_file=output.csv -o quiet=true -o friendly=false -o header=false -o output_format=csv

# Using key-pair

private_key_path = <path>/rsa_key.p8
snowsql -a <account_identifier> -u <user> --private-key-path <path>/rsa_key.p8
snowsql -a tk53520.eu-central-1 -u kafka_connector_user_1 --private-key-path=snowflake-sink/rsa_key.p8