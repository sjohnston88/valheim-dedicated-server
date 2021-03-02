#!/bin/bash

aws cloudformation deploy \
    --stack-name valheim-server-testing \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file ./infra.yml \
    --no-fail-on-empty-changeset \
    --parameter-overrides ServerName=$SERVER_NAME ServerPassword=$SERVER_PASSWORD EmailAddress=$EMAIL_ADDRESS S3BucketName=${S3_BUCKET} AMI=${CUSTOM_AMI}
