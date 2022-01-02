This example shows you about how you can parse an Apache web log using an advanced pipeline. During this we will:

- Use the file as Input
- Use Grok to parse our lines
- Use Mutate to enrich to fields
- Use Date to inject the actual timestamp
- Use Rubydebug as Output

Read the following for more information, see [Logstash Reference](https://www.elastic.co/guide/en/logstash/current/advanced-pipeline.html)

### First prerequisite is to download the Logstash tutorial log.

`curl -O https://download.elastic.co/demos/logstash/gettingstarted/logstash-tutorial.log.gz`{{execute HOST1}}

### Uncompress the file

`gunzip logstash-tutorial.log.gz`{{execute HOST1}}

Now you can open the file with a text-editor. Do you recognize the log format ?

### Create the first basic pipeline (rules) file

`logstash-7.4.0/bin/logstash -f first-pipeline.conf --config.reload.automatic`{{execute HOST1}}

What do you see ? What can be improved ?
