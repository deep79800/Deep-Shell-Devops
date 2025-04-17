#!/bin/bash

set -x

#Lists S3 buckets
echo "Lists of S3 buckets"
aws s3 ls

#Lists EC2 instances
echo "Lists of EC2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#Lists Lambda 
echo "Lists of Lambda functions"
aws lambda list-functions

#Lists IAM users
echo "Lists of IAM users"
aws iam list-users
