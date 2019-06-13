## Now what we have deployed the *elastic-operator* we can start deploying our first Pods. 

We will start deploying a basic Elasticsearch cluster by applying the *elasticsearch.yaml* object template to Kubernetes.`kubectl apply -f course/elasticsearch.yaml`{{execute HOST1}} 

After we have applied the template we can see the objects created. Use the commands below to validating the Services are created and the Pods are running  correctly. You can also use the Kubernetes UI for this.

Lookup the created Services `kubectl get services`{{execute HOST1}}

Lookup the created Pods `kubectl get pods`{{execute HOST1}} and wait til they all are Ready (1/1).

It could take a while before all pods are started correctly. Message like *Readiness probe failed:* can be safely ignored.
