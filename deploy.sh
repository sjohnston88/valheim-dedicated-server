#!/bin/bash

aws cloudformation deploy \
    --stack-name valheim-server \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file ./infra.yml \
    --no-fail-on-empty-changeset \
    --parameter-overrides ServerPassword=$SERVER_PASSWORD, EmailAddress=$EMAIL_ADDRESS
