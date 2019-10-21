This example shows you about how you can parse an Apache web log using an advanced pipeline. During this we will:

- Use the file as Input
- Use Grok to parse our lines
- Use Mutate to enrich to fields
- Use Rubydebug as Output

Read the following for more information, see [Logstash Reference](https://www.elastic.co/guide/en/logstash/current/advanced-pipeline.html)

Below we will explain the use of the **Grok plugin**

For parsing data both **Dissect** and **Grok** exist. Dissect differs from Grok in that it does not use regular expressions and is faster. Dissect works well when data is reliably repeated. Grok is a better choice when the structure of your text varies from line to line.

Grok is a great way to parse unstructured log data into something structured and queryable. This tool is perfect for syslog logs, apache and other webserver logs, mysql logs, and in general, any log format that is generally written for humans and not computer consumption. About 150+ Grok patterns exist and can be easily extended using the Oniguruma syntax.

Grok works by combining text patterns into something that matches your logs.

The syntax for a grok pattern is %{SYNTAX:SEMANTIC:DATATYPE}:

- The SYNTAX is the name of the pattern that will match your text.
- The SEMANTIC is the identifier you give to the piece of text being matched.
- The DATATYPE is an optional field that can mark a field as Integer (int) or Float (float). Default fields are all marked as Text.

More information about Grok can be found at the [Logstash Plugin Reference](https://www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html)

### Go for better parsing and discover the pattern

You may have noticed that the **message** field is not yet parsed well. To apply correct parsing we can use a Filter plugin called Grok. Grok seems difficult, but tries to make Regex more user friendly. Also for creating a good Grok line you may want to use the [Grok Debugger site](http://grokdebug.herokuapp.com) or just the Kibana Grok parser.

Now copy the following line to the Grok debug Tester. What do you see ?

In this case we can easily parse these line by using the following SYNTAX

``%{COMBINEDAPACHELOG}``

Do you think this will work ? What will be the effect ?

### First cleanup the file input cache

`rm -rf logstash-7.4.0/data/plugins/inputs/file`{{execute HOST1}}

### Create the first basic pipeline (rules) file

`logstash-7.4.0/bin/logstash -f grok-pipeline.conf --config.reload.automatic`{{execute HOST1}}

What do you see ? What can be improved ?
