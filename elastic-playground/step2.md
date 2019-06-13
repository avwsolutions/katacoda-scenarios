## Explore the Kubernetes deployed cluster 

#### Exploration:

Optional step. You can connect to the deployed Kubernetes cluster by requesting the Token and open the Kubernetes Web UI.

Generate Token and copy/paste this to your clipboard
`kubectl describe secrets`{{execute HOST1}} 

Now it is time to open the [Kubernetes Web UI] https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com//api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

After you are ready to use Kibana click *CONTINUE*
