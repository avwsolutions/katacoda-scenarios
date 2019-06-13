## Now what we have deployed the *elastic-operator* we can start deploying our first Pods. 

We will start deploying a basic Kibana node by applying the *kibana.yaml* object template to Kubernetes.`kubectl apply -f course/kibana.yaml`{{execute HOST1}} 

After we have applied the template we can see the objects created. Use the commands below to validating the Services are created and the Pods are running  correctly. You can also use the Kubernetes UI for this.

Lookup the created Services `kubectl get services`{{execute HOST1}}

Lookup the created Pods `kubectl get pods`{{execute HOST1}}
