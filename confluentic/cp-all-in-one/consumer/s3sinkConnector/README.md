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
