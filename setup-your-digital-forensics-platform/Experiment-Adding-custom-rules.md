Now that we have tested the default-rules we are at the moment that we can add some additional rules. Luckely for us Sysdig provide a great extra ruleset at [Github](https://github.com/draios/falco-extras), which almost support the most favorite tools around, such as *NgInx* and *Elasticsearch*.

#### First step is to create our custom ruleset YAML file

This step can be easily done using the provided *rules2helm* script.
During this example we will add additional rules for elasticsearch and nginx.

Clone the extras repository.

`git clone https://github.com/draios/falco-extras.git`{{execute HOST1}}

Get into the directory.

`cd falco-extras`{{execute HOST1}}

Execute the `rules2helm` script to generate a custom-rules file.

`./scripts/rules2helm rules/rules-nginx.yaml rules/rules-elasticsearch.yaml > custom-rules.yaml`{{execute HOST1}}

Now take a look inside your `cat custom-rules.yaml` file.

#### Now it's time to import the new custom ruleset with our required logstash configuration.

`helm install --name sysdig-falco-1 -f /root/course/falco-values-logstash.yaml -f custom-rules.yaml stable/falco`{{execute HOST1}}

After you have added the rules go into the elastic Pod again using the following command.

`kubectl exec -it es /bin/bash`{{execute HOST1}}

#### After we have connected try to look at the one or more *sensitive files* like our keystore.

`cat config/elasticsearch.keystore`{{execute HOST1}}

Additionally startup the Python command.

`python`{{execute HOST1}}

Now open the **Kibana** tab which is available next to the **Terminal** tab and lookup the corresponding events. if you are opening Kibana for the first time you always have to set the *Kibana Index Pattern* with corresponding *Date* attribute. Our index which is currently created is called *logstash-** with a corresponding date attribute in our example is called *@Timestamp*.

![Kibana Experiment2](https://raw.githubusercontent.com/avwsolutions/katacoda-scenarios/master/setup-your-digital-forensics-platform/images/experiment2.png)

Now play around on your es Pod and try to trigger the Falco alerting. Don't forget to *exit* to return to the *management console*

`exit`{{execute HOST1}}
