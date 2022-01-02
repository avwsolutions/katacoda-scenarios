This example shows you about how you can parse an Apache web log using an advanced pipeline. During this we will:

- Use the file as Input
- Use Grok to parse our lines
- Use Mutate to enrich to fields
- Use Date to inject the actual timestamp
- Use Rubydebug as Output

Read the following for more information, see [Logstash Reference](https://www.elastic.co/guide/en/logstash/current/advanced-pipeline.html)

Below we will explain the use of **conditional syntax** and the famous the **Mutate plugin**

Sometimes you only want to filter or output an event under certain conditions. For that, you can use a conditional expression.

Conditionals in Logstash look and act the same way they do in programming languages. Conditionals support if, else if and else statements and can be nested.

The conditional syntax is:

``
if EXPRESSION {
  ...
} else if EXPRESSION {
  ...
} else {
  ...
}
``
More information about the conditional syntax can be found at the [Logstash Configuration Reference](https://www.elastic.co/guide/en/logstash/current/event-dependent-configuration.html)

Apart of this the change is driven by the **Mutate** plugin. The mutate filter allows you to perform general mutations on fields. You can rename, remove, replace, and modify fields in your events.

More information about the mutate plugin can be found at the [Logstash Plugin Reference](https://www.elastic.co/guide/en/logstash/current/plugins-filters-mutate.html)

### Update the message 

Since we now applied the Grok filter we see all data in the message field is succesfully parsed to new fields, which is great. Now for all we want to set a clear message, instead of the full log line. To do this we will use both a conditional statement and Mutate to achieve this.

Our approach is the following:
- Identify if all required fields (verb, request, clientip and response) are created
- If it is a match, replace the message with ``%{verb} received: %{request} from %{clientip} with response %{response}``
- If it is not a match, add a tag called ``unknown-event``

How can you implement this type of ruling in the pipeline ? Do you have an idea ?

### First cleanup the file input cache

`rm -rf logstash-7.4.0/data/plugins/inputs/file`{{execute HOST1}}

### Create the first basic pipeline (rules) file

`logstash-7.4.0/bin/logstash -f mutate-pipeline.conf --config.reload.automatic`{{execute HOST1}}

What do you see ? What can be improved ?
