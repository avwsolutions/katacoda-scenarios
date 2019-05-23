First we will start with deploying our Elasticsearch node on the *k8s cluster*. Elasticsearch is used for storing our gathered data as *JSON documents* and make them easy searchable.

#### Deploy ECK:

`kubectl apply -f https://download.elastic.co/downloads/eck/0.8.0/all-in-one.yaml`{{execute HOST1}}
