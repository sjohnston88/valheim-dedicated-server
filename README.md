# Valheim Server

Automated Valheim dedicated server installation which runs using AWS EC2 within the free tier.

## Requirements

- GitHub Account
- AWS Account
- CircleCI Account

These are free so long as you stay within their limitations, which this repository is configured to do.

## Get Up and Running

Ensure your CircleCI and AWS accounts have been linked, then simply fork this repository; CircleCI will pick up the repository and deploy the cloudformation template using the AWS CLI.

Please note that the script is set to deploy to eu-west-1 (London) by default. Configure this in deploy.sh if you want to change it.

Please create issues if you find any :)

## Todo

- Open and edit the server_config.bat file
- Launch the server.
- Output ElasticIP
- Route53 DNS records
- Automated nightly backups
