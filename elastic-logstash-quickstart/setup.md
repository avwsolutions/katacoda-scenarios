### Install Java as prerequisite 

`yum install java -y`{{execute HOST1}}

### Download the 7.4.0 tarball from elastic.co

`curl -O https://artifacts.elastic.co/downloads/logstash/logstash-7.4.0.tar.gz`{{execute HOST1}}

### Extract the tar package to your home directory

`tar -xzvf logstash-7.4.0.tar.gz`{{execute HOST1}}

### Now validate logstash by requesting the version

`logstash-7.4.0/bin/logstash --version`{{execute HOST1}}
