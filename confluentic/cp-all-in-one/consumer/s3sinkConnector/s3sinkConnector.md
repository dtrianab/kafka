# AWS
1. Create bucket dtbfks3sinkkafka
2. Create user s3kafka
3. Create in line policy for user user s3kafka 

```json
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Effect": "Allow",
			"Action": [
				"s3:ListAllMyBuckets"
			],
			"Resource": "arn:aws:s3:::dtbfks3sinkkafka"
		},
		{
			"Effect": "Allow",
			"Action": [
				"s3:ListBucket",
				"s3:GetBucketLocation"
			],
			"Resource": "arn:aws:s3:::dtbfks3sinkkafka"
		},
		{
			"Effect": "Allow",
			"Action": [
				"s3:PutObject",
				"s3:GetObject",
				"s3:AbortMultipartUpload",
				"s3:PutObjectTagging"
			],
			"Resource": "arn:aws:s3:::dtbfks3sinkkafka/*"
		}
	]
}
```
4. Create access keys for user s3kafka


There are three different ways to configure the aws s3 credentials in the kafka connect:
- Environment variables
- Java system properties
- Stored in file ~/.aws/credentials

In the yaml file, the file credentials is mounted the the path ~/.aws/credentials

# Start the connector

curl -X POST "http://localhost:8083/connectors" -H "Content-type:application/json" --data @s3sinkConnector/s3sinkConnector.json | jq
curl -X DELETE http://localhost:8083/connectors/s3SinkConnector


References
- https://www.youtube.com/watch?v=_RdMCc4HGPY