## Assignment 1

### Download logstash into your home directory

Ensure yourself that Java runtime is installed by `yum install java -y`{{execute HOST1}}

Use the following command to download the latest tarball `curl -O https://artifacts.elastic.co/downloads/logstash/logstash-7.4.0.tar.gz`{{execute HOST1}}

Now it is time to extract the package and validate the logstash execution by requesting the version. Use the following commands below.

`tar -xzvf logstash-7.4.0.tar.gz`{{execute HOST1}}

`logstash-7.4.0/bin/logstash --version`{{execute HOST1}}
