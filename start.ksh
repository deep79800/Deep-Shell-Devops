#!/bin/bash
 
instance_ids=$(aws ec2 describe-instances \
	  --filters Name=instance-state-name,Values=stopped \
	    --query 'Reservations[*].Instances[*].InstanceId' \
	      --output text)
 
for id in $instance_ids; do
	  echo "Starting instance $id"
	    aws ec2 start-instances --instance-ids $id
    done
