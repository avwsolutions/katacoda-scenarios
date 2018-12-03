Logstash is used to connect all our data sources, such as Sysdig. The Logstash service is hosted on the Kubernetes cluster.  

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

![Elasticsearch log](https://user-images.githubusercontent.com/25182304/43620198-8830e4a6-969f-11e8-9c05-0cd6ffc5ab96.png)
