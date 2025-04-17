#!/bin/bash
 
instance_ids=$(aws ec2 describe-instances \
	  --filters Name=instance-state-name,Values=running \
	    --query 'Reservations[*].Instances[*].InstanceId' \
	      --output text)
 
for id in $instance_ids; do
	  echo "Stopping instance $id"
	    aws ec2 stop-instances --instance-ids $id
    done
