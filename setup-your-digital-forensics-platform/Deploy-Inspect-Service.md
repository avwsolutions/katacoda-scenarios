Before we will deploy our Sysdig Inspect Pod we need some additional volume to share our capture results.For convenience this is also hosted on the *k8s* node.

#### Setup the capture volume

`ssh -oStrictHostKeyChecking=no root@node01 "mkdir -p /pods/sysdig/captures ; cd /pods/sysdig/captures ; chmod -R 755 ."`{{execute HOST1}}

`kubectl apply -f /root/course/sysdig-inspect.yaml`{{execute HOST1}}

#### Verify that Sysdig Inspect is running 

Check the pods for sysdig-inspect:

`kubectl get pods`{{execute HOST1}}

Check the Sysdig-Inspect logs:  

`kubectl logs sysdig-inspect"`{{execute HOST1}}
