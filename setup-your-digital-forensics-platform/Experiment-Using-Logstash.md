In the last experiment we where using a direct REST API call towards Elasticsearch, which works but has some constraints such as caching and enrichment capabilities. For this you can use either [Fluentd](https://www.fluentd.org/) (EFK) or [Logstash](https://www.elastic.co/products/logstash) (ELK). During this experiment we will redeploy our Sysdig Falco pods with a new configuration to directly integrate with the ELK stack and take advantages of the persistent queue and enrichments functions available to respond on Sysdig events.

**Note:** Don't forget to first remove your current *helm* package, which can be easily done with `helm delete --purge sysdig-falco-1`{{execute HOST1}}

### Install Sysdig Falco through a predefined Helm Package

`helm install --name sysdig-falco-1 -f /root/course/falco-values-logstash.yaml stable/falco`{{execute HOST1}}

**Note:** Take a notice that Sysdig falco Pods are deployed as *DaemonSets*, actually means that every Node runs their own container in the *k8s* cluster for handling all Node specific events.More information about [DaemonSets]().

#### Verify that Falco is running 

Check the pods for Falco:

`kubectl get pods`{{execute HOST1}}

Check the Falco logs:  

`for pod in $(kubectl get pods --no-headers | grep sysdig-falco-1 | awk '{ print $1 }'); do kubectl logs $pod | grep -e "Falco initialized" -e "Loading rules" ; done`{{execute HOST1}}
