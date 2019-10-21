This example shows you about how you can parse an Apache web log using an advanced pipeline. During this we will:

- Use the file as Input
- Use Grok to parse our lines
- Use Mutate to enrich to fields
- Use Date to inject the actual timestamp
- Use Rubydebug as Output

Read the following for more information, see [Logstash Reference](https://www.elastic.co/guide/en/logstash/current/advanced-pipeline.html)

Below we will explain the use of the **Date plugin**

The date filter is used for parsing dates from fields, and then using that date or timestamp as the logstash timestamp for the event.

More information about the Date plugin can be found at the [Logstash Plugin Reference](https://www.elastic.co/guide/en/logstash/current/plugins-filters-date.html)

### Update the timestamp 

Now that we updated the message, did some enrichment we now have to align the timestamp. In Elastic this is known as **@timestamp**
With the date plugin we can easily parse a date from a field. In our case this field is [timestamp]

How can you implement this type of timestamp update in the pipeline ? Do you have an idea ? What can be implications ?

### First cleanup the file input cache

`rm -rf logstash-7.4.0/data/plugins/inputs/file`{{execute HOST1}}

### Create the first basic pipeline (rules) file

`logstash-7.4.0/bin/logstash -f date-pipeline.conf --config.reload.automatic`{{execute HOST1}}

What do you see ? What can be improved ?
