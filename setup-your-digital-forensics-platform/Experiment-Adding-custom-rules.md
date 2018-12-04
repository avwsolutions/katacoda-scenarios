Now that we have tested the default-rules we are at the moment that we can add some additional rules. Luckely for us Sysdig provide a great extra ruleset at [Github](https://github.com/draios/falco-extras), which almost support the most favorite tools around, such as *NgInx* and *Elasticsearch*.

#### First step is to create our custom ruleset YAML file

This step can be easily done using the provided *rules2helm* script.
During this example we will add additional rules for elasticsearch and nginx.

`git clone https://github.com/draios/falco-extras.git`{{execute HOST1}}
`cd falco-extras`{{execute HOST1}}
`./scripts/rules2helm rules/rules-nginx.yaml rules/rules-elasticsearch.yaml > custom-rules.yaml`{{execute HOST1}}

Now take a look inside your `cat custom-rules.yaml` file.

#### Now it's time to import the new custom ruleset.

`helm install --name sysdig-falco-1 -f custom-rules.yaml`{{execute HOST1}}
