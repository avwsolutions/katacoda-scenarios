## Install prerequisites for Clickhouse (if necessary)

`apt-get install apt-transport-https ca-certificates dirmngr -y`{{execute HOST1}}

### Download and store the Clickhouse GPG key

`apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E0C56BD4`{{execute HOST1}}

### Add the Clickhouse repository locally

`echo "deb https://repo.clickhouse.com/deb/stable/ main/" | tee /etc/apt/sources.list.d/clickhouse.list`{{execute HOST1}}

Update local repositories package lists.
`apt-get update`{{execute HOST1}}

### Install the Clickhouse server and  client components

`apt-get install -y clickhouse-server clickhouse-client`{{execute HOST1}}

During the interactive installation you will be asked to set the *default user* password. During this quickstart we will use **stroopwafels** as our secret.

### Startup the server process service
`service clickhouse-server start`{{execute HOST1}}

### Use the clickhouse-client to verify database connectivity
`clickhouse-client --query "SHOW DATABASES --password"`{{execute HOST1}}

### Create our initial dastabase for Vector
`clickhouse-client --query "CREATE DATABASE IF NOT EXISTS vector --password"`{{execute HOST1}}
