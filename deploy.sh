#!/bin/bash

aws cloudformation deploy \
    --region eu-west-1 \
    --stack-name valheim-server \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file ./infra.yml \
    --no-fail-on-empty-changeset \
