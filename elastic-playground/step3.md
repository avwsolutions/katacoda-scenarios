## Collect credentials, validate elasticsearch and open the [Kibana Console]

Since Security is enabled by default we need a valid user account to login our Elastic stack. The default username is *elastic*. The password for this user is generated during deployment and stored in a Kubernetes Secrets Object. use the following commands to get the password and login into the Kibana console.

#### Retrieve password from Secret
First we get the password by executing `PASSWORD=$(kubectl get secret k8s-fullstaq-elastic-user -o=jsonpath='{.data.elastic}'| base64 --decode)`{{execute HOST1}}
Now copy the password to your clipboard `echo $PASSWORD`{{execute HOST1}}

#### Retrieve elasticsearch Service IP
Next we have to get Service (Cluster) IP to do our first connectivity check by executing `SERVICEIP=$(kubectl get services | grep 9200/TCP | awk '{print $3}')`{{execute HOST1}}

#### Validate elasticsearch cluster health
`curl -k https://$SERVICEIP:9200/_cat/health?v -u elastic:$PASSWORD`{{execute HOST1}}


#### Open Kibana Console
After this successfull test we can open our Kibana Console and log in with user *elastic* and provided password.
[Kibana console] https://[[HOST_SUBDOMAIN]]-30561-[[KATACODA_HOST]].environments.katacoda.com/
