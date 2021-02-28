# Valheim Server

Automated Valheim dedicated server installation which spins up a AWS EC2 t2.medium instance running red hat based OS. (Amazon Linux/CentOS). Installs and starts your server automatically using LinuxGSM and sets up some email alerts for when the server is updated or down.

## Requirements

- GitHub Account
- AWS Account
- CircleCI Account

These are free so long as you stay within their limitations, which this repository is configured to do.

## Get Up and Running

1. Fork this repository
2. Login to CircleCI, and give permissions to the new project.
3. Add your `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_DEFAULT_REGION` settings as environment variables.
4. Also add `SERVER_PASSWORD` and `EMAIL_ADDRESS` environment variables.
5. Restart the build in CircleCI.
6. Volia, you should now be setup and running :)

Please note that the script is set to deploy to eu-west-1 (London) by default. Configure this in deploy.sh if you want to change it.

## Importing an existing world

This is a manual step and requires connecting to your server using SFTP

## Issues

Please create issues if you find any :)

## Todo

- Launch the server.
- Output ElasticIP
- Automated nightly backups
- Remove KeyPair from EC2 cloudformation when finished
