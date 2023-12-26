# Key Pair Docs
https://docs.snowflake.com/en/user-guide/key-pair-auth

# Step 1: Generate the Private Key
openssl genrsa 2048 | openssl pkcs8 -topk8 -inform PEM -out rsa_key.p8 -nocrypt
openssl genrsa 2048 | openssl pkcs8 -topk8 -v2 des3 -inform PEM -out rsa_key.p8

# Step 2: Generate a Public Key
openssl rsa -in rsa_key.p8 -pubout -out rsa_key.pub


      "snowflake.private.key":"",
      "snowflake.private.key.passphrase":"",