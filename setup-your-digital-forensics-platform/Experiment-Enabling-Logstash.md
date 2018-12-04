In the last experiment we where using a direct REST API call towards Elasticsearch, which works but has some constraints such as caching and enrichment capabilities. For this you can use either [Fluentd](https://www.fluentd.org/) or [Logstash](https://www.elastic.co/products/logstash). During this experiment we will redeploy our Sysdig Falco pods with a new configuration to directly integrate with the ELK stack and take advantages of the persistent queue and enrichments functions available to respond on Sysdig events.

**Note:** Don't forget to first remove your current *helm* package, which can be easily done with `helm delete --purge sysdig-falco-1`{{execute HOST1}}


#### After we have connected try to look at the one or more *sensitive files*.

`cat /etc/shadow`{{execute HOST1}} 

Now open the **Kibana** tab which is available next to the **Terminal** tab and lookup the corresponding events. if you are opening Kibana for the first time you always have to set the *Kibana Index Pattern* with corresponding *Date* attribute. Our index which is currently created is called *sysdig* with a corresponding date attribute in our example is called *time*.

![Kibana Experiment1](https://raw.githubusercontent.com/avwsolutions/katacoda-scenarios/master/setup-your-digital-forensics-platform/images/experiment1.png

Now play around on your es Pod and try to trigger the Falco alerting. Don't forget to *exit* to return to the *management console*

`exit`{{execute HOST1}}
