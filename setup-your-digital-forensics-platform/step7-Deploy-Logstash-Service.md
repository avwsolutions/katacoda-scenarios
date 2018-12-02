Filebeat will connect to Elasticsearch and Kibana running in the Kubernetes cluster.  

#### Setup Logstash configuration

First we will setup the logstash configuration, which needs to be available at our Kubernetes node

`ssh -oStrictHostKeyChecking=no root@node01 "mkdir -p /pods/logstash/configuration ; cd /pods/logstash/configuration ; chmod -R 755 .; tar -xvf /root/course/example-configuration.tar"`{{execute HOST1}}

:warning:: During this exercise we are using a [hostPath](https://kubernetes.io/docs/concepts/storage/volumes/#hostpath) volume type, local to the Kubernetes node, only for single-node demonstration purposes. Use a different volume type for real use, which scales over multiple Kubernetes nodes. 

#### Deploy Logstash:

`kubectl apply -f /root/course/logstash.yaml`{{execute HOST1}}

**Note**: This YAML file is deploying Elasticsearch without a persistent store, as this course is meant to live for less than 30 minutes.  Do not use es.yaml to deploy Elasticsearch for real use. You should use our official Docker images found at http://docker.elastic.co

#### Verify that Elasticsearch is running

Checking the pods:

`kubectl get pods`{{execute HOST1}}

Checking the logs:

`kubectl logs es | grep "Pipeline started successfully"`{{execute HOST1}}

When Elasticsearch is fully initialized, you will see a log entry indicating that the license file is valid.

![Elasticsearch log](https://user-images.githubusercontent.com/25182304/43620198-8830e4a6-969f-11e8-9c05-0cd6ffc5ab96.png)
