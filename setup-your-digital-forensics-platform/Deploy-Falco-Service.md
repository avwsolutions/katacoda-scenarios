#### First init Helm, which is the Kubernetes Package Manager

`helm init`{{execute HOST1}}

### Install Sysdig Falco through a predefined Helm Package

`helm install --name sysdig-falco-1 -f /root/course/falco-values.yaml stable/falco`{{execute HOST1}}

#### Verify that Falco is running 

Check the pods for Falco:

`kubectl get pods`{{execute HOST1}}

Check the Falco logs:  

`kubectl logs falco`{{execute HOST1}}
