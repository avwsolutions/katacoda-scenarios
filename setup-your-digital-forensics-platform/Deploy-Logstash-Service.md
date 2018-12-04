In the last experiment we where using a direct REST API call towards Elasticsearch, which works but has some constraints such as caching and enrichment capabilities. For this you can use either [Fluentd](https://www.fluentd.org/) or [Logstash](https://www.elastic.co/products/logstash). During this experiment we will redeploy our Sysdig Falco pods with a new configuration to directly integrate with the
 ELK stack and take advantages of the persistent queue and enrichments functions available to respond on Sysdig events.

**Note:** Don't forget to first remove your current *helm* package, which can be easily done with `helm delete --purge sysdig-falco-1`{{execute HOST1}}

#### Setup Logstash configuration

First we will setup the storage volume, which holds the logstash configuration at our *k8s* node.

`ssh -oStrictHostKeyChecking=no root@node01 "mkdir -p /pods/logstash/configuration ; cd /pods/logstash/configuration ; chmod -R 755 .; tar -xvf /root/course/example-configuration.tar"`{{execute HOST1}}

**Note**: During this exercise we are using a [hostPath](https://kubernetes.io/docs/concepts/storage/volumes/#hostpath) volume type, which stores data locally on the *k8s* node. Use a different volume type for real use, which scales over multiple Kubernetes nodes.

#### Deploy Logstash:

`kubectl apply -f /root/course/logstash.yaml`{{execute HOST1}}

**Note**: For simplicity this YAML file is deploying Logstash as a regular Pod. Do not use a regular pod for deploying Logstash for real use, instead use a *DaemonSet*.

#### Verify that Logstash is running

Checking the pods:

`kubectl get pods`{{execute HOST1}}

Checking the logs:

`kubectl logs logstash | grep "Pipeline started successfully"`{{execute HOST1}}

When Logstash is fully initialized, you will see a log entry indicating that the Pipeline started successfully.
