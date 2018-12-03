First we will start with deploying our Elasticsearch node on the *k8s cluster*. Elasticsearch is used for storing our gathered data as *JSON documents* and make them easy searchable.

#### Deploy Elasticsearch:

`kubectl apply -f /root/course/es.yaml`{{execute HOST1}}

**Note**: This YAML file is deploying Elasticsearch without a persistent store, as this course is meant to live for less than 30 minutes.  Do not use es.yaml to deploy Elasticsearch for real use.

#### Verify that Elasticsearch is running

Checking the pods:

`kubectl get pods`{{execute HOST1}}

Checking the logs:

`kubectl logs es | grep "mode \[basic\] - valid"`{{execute HOST1}}

When Elasticsearch is fully initialized, you will see a log entry indicating that the license file is valid.

![Elasticsearch log](https://user-images.githubusercontent.com/25182304/43620198-8830e4a6-969f-11e8-9c05-0cd6ffc5ab96.png)
