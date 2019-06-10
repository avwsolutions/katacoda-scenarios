## Now that we have deployed the Elastic Stack we can start opening the Kibana Console and Elasticsearch REST API 

Since Security is enabled by default we need a valid user account to login our Elastic stack. The default username is *elastic*. The password for this user is generated during deployment and stored in a Kubernetes Secrets Object. use the following commands to get the password and login into the Kibana console.

First we get the password by executing `PASSWORD=$(kubectl get secret elasticsearch-sample-elastic-user -o=jsonpath='{.data.elastic}'| base64 --decode)`{{execute HOST1}}
Next we have to get Service (Cluster) IP to do our first connectivity check by executing `SERVICEIP=$(kubectl get services | grep 9200/TCP | awk '{print $3}')`{{execute HOST1}}

Now that we have the password we can login to the elasticsearch REST API and Kibana console.

First we will validate our Elasticsearch cluster by executing `curl -k https://$SERVICEIP:9200/_cat/nodes -u elastic:$PASSWORD`{{execute HOST1}}

After this successfull test we can open our [Kibana console] https://[[HOST_SUBDOMAIN]]-30561-[[KATACODA_HOST]].environments.katacoda.com/




