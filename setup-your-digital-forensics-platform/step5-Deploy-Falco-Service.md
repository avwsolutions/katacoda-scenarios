
`kubectl apply -f /root/course/falco-daemonset.yaml`{{execute HOST1}}

#### Verify that Falco is running 

Check the pods for Falco:

`kubectl get pods`{{execute HOST1}}

Check the Falco logs:  

`kubectl logs falco`{{execute HOST1}}
