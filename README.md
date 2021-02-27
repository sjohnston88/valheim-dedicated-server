# Valheim Server

Automated Valheim dedicated server installation which runs using AWS EC2 within the free tier.

## Requirements

- GitHub Account
- AWS Account
- CircleCI Account

These are free so long as you stay within their limitations, which this repository is configured to do.

## Get Up and Running

1. Fork this repository
2. Login to CircleCI, and give permissions to the new project.
3. Add your `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` credentials as environment variables.
4. Create another environment variable; `SERVER_PASSWORD` - this will be the password you login to the server is.
5. Restart the build in CircleCI.
6. Volia, you should now be setup and running :)

Please note that the script is set to deploy to eu-west-1 (London) by default. Configure this in deploy.sh if you want to change it.

Please create issues if you find any :)

## Todo

- Open and edit the server_config.bat file
- Launch the server.
- Output ElasticIP
- Route53 DNS records
- Automated nightly backups
