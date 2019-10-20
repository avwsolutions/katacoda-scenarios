This example shows you about how easy it can be to stash your first event through the pipeline by only using the commandline.

In theory the pipeline is defined in three stages, namely:
- Input, required
- Filter, optional
- Output, required

More information can be found at [Logstash reference](https://www.elastic.co/guide/en/logstash/current/first-event.html)

### Start the logstash pipeline

`logstash-7.4.0/bin/logstash -e 'input { stdin { } } output { stdout {} }'`{{execute HOST1}}

Wait till you see the following log entry

``[2019-10-20T19:02:39,727][INFO ][logstash.agent           ] Successfully started Logstash API endpoint``

### Stash your first event

`hello world`{{execute HOST1}}

Also try to add more events. You can stop the pipeline with <CTRL>-D.

### Challenge !!! 

Which flag is used to directly execute a pipeline (rules) from the CLI ?



