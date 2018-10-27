#!/bin/bash


            export DOMAIN_NAME="aheadlabs.io"
            export CLUSTER_ALIAS="prod"
            export CLUSTER_FULL_NAME="${CLUSTER_ALIAS}.${DOMAIN_NAME}"
            export CLUSTER_AWS_AZ="us-west-2a"
            export KOPS_STATE_STORE="s3://${CLUSTER_FULL_NAME}-state"
            export AWS_ACCESS_KEY_ID=`aws configure get aws_access_key_id`
            export AWS_SECRET_ACCESS_KEY=`aws configure get aws_secret_access_key`
            # Optional export DOMAIN_NAME_ZONE_ID=Z1VROASDFFASDFAS

            aws s3api create-bucket --bucket ${CLUSTER_FULL_NAME}-state

            export KOPS_STATE_STORE="s3://${CLUSTER_FULL_NAME}-state"
