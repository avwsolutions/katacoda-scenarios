
`kubectl apply -f /root/course/sysdig-inspect.yaml`{{execute HOST1}}

#### Verify that Sysdig Inspect is running 

Check the pods for sysdig-inspect:

`kubectl get pods`{{execute HOST1}}

Check the Sysdig-Inspect logs:  

`kubectl logs sysdig-inspect"`{{execute HOST1}}
