## Install prerequisites for Clickhouse

`apt-get install apt-transport-https ca-certificates dirmngr -y`{{execute HOST1}}

### Download and store the Clickhouse GPG key

`apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E0C56BD4`{{execute HOST1}}

### Add the Clickhouse repository locally

`echo "deb https://repo.clickhouse.com/deb/stable/ main/" | tee /etc/apt/sources.list.d/clickhouse.list`{{execute HOST1}}
`apt-get update`{{execute HOST1}}

### Install the Clickhouse server and  client components

`apt-get install -y clickhouse-server clickhouse-client`{{execute HOST1}}

### Startup the server process service
`service clickhouse-server start`{{execute HOST1}}