After we have looked at elasticsearch we will now look at a Pod running NgInx. For this experiment we will first deploy this container.
Follow the steps below to startup this web service.

Deploy the nginx web service by running the `kubectl apply` command:

`kubectl apply -f /root/course/nginx-kubernetes.yaml`{{execute}}

### Check to see if the pods are running:

`kubectl get pods`{{execute}}

If all the pods are not running, then wait a minute and run the `kubectl get pods` command again. 

### Validate if the NgInx web service is up and running 

Once the pods are all running, switch to the **Web Service** tab and look at the page.
