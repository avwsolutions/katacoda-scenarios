## Now it is time to research what is created to enable the elastic-operator stateful set.

First we have to generate our Token by executing `kubectl describe secrets`{{execute HOST1}} 

Now it is time to open the Kubernetes Web UI

`https://[[HOST_SUBDOMAIN]]-8888-[[KATACODA_HOST]].environments.katacoda.com//api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=elastic-system`
