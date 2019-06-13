## Welcome to the Elastic Playground based on Elastic Cloud Kubernetes (ECK)
 
#### Initialisation:

Wait till all Pods are in READY (1/1) state.

`kubectl get pods`{{execute HOST1}}

Use the following command to monitor the deployment progress by requesting the logs of the **Elastic Operator**.

`kubectl -n elastic-system logs -f statefulset.apps/elastic-operator`{{execute HOST1}}

After all Pods are ready click *CONTINUE*
