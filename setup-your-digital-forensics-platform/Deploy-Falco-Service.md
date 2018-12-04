Now that we have deployed our Elasticsearch and Kibana instance we can start playing around with Falco. One of the great features is that Falco is delivered as Helm package which makes it super-easy to setup. Follow the activities below to initiate Helm.

#### First init Helm, which is the Kubernetes Package Manager

`helm init`{{execute HOST1}}

### Install Sysdig Falco through a predefined Helm Package

`helm install --name sysdig-falco-1 -f /root/course/falco-values-es.yaml stable/falco`{{execute HOST1}}

**Note:** Take a notice that Sysdig falco Pods are deployed as *DaemonSets*, actually means that every Node runs their own container in the *k8s* cluster for handling all Node specific events.More information about [DaemonSets]().

#### Verify that Falco is running 

Check the pods for Falco:

`kubectl get pods`{{execute HOST1}}

Check the Falco logs:  

`for pod in $(kubectl get pods --no-headers | grep sysdig-falco-1 | awk '{ print $1 }'); do kubectl logs $pod | grep -e "Falco initialized" -e "Loading rules" ; done`{{execute HOST1}}
