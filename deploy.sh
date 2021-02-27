#!/bin/bash

aws cloudformation deploy \
    --stack-name valheim-server \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file ./infra.yml \
    --no-fail-on-empty-changeset \
    --parameters ServerPassword=$SERVER_PASSWORD
