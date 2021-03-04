# Valheim Server

Automated Valheim dedicated server installation which spins up a AWS EC2 t2.medium instance running red hat based OS. (Amazon Linux/CentOS). Installs and starts your server automatically using LinuxGSM and sets up some email alerts for when the server is updated or down. Can also backup game world files to S3.

## Requirements

- GitHub Account
- AWS Account
- CircleCI Account

## Get Up and Running

1. Fork this repository
2. Login to CircleCI, and give permissions to the new project.
3. Add your `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_DEFAULT_REGION` settings as environment variables.
4. Also add `SERVER_NAME`, `SERVER_PASSWORD` and `EMAIL_ADDRESS` environment variables.
5. Optionally set `S3_BUCKET` with the globally unique name of an S3 bucket, and upload any existing game worlds to a `/vhserver` directory.
6. Restart the build in CircleCI.
7. Volia, you should now be setup and running. Cloudformation will output the Server IP.

Please note that the default AMI is based in eu-west-2, if you want to spin up a server in a different region, you can set the `CUSTOM_AMI` environment variable.

## Automated half hourly backups

If you set the `S3_BUCKET` environment variable your world files we be automatically backed up night. Backups are not versioned and only one backup will exist at any given time, older backups are automatically overwritten.

## Importing an existing world

### Automated Import

If you set the `S3_BUCKET` environment variable and the bucket contains a folder called `vhserver` containing your world files, they will be automatically downloaded and configured when the server first boots. Your backup files must be the same as your server name, ignoring any file extensions.

### Manual Importing steps

To import manually you can attach a new ssh key to the EC2 Instance, and either upload via terminal, or SFTP. Steps to follow:

1. Create a new key pair in the EC2 Console and download it.
2. Connect to the valheim server instance using the AWS browser terminal.
3. Run the following command to grant SFTP access to the valheim server:

```js
sudo -su vhserver
mkdir /home/vhserver/.ssh
touch /home/vhserver/.ssh/authorized_keys
```

4. Locally, retrieve the public key by running `ssh-keygen -y -f /path_to_key_pair/my-key-pair.pem`
5. Paste the output into the authorized_keys file you just created.
6. You now have SFTP access. Connect to the server using: `sftp://vhserver@xxx.xxx.xxx.xxx`
7. Upload your server files to `~/.config/unity3d/IronGate/Valheim/worlds`

## Issues

Please create issues if you find any :)
