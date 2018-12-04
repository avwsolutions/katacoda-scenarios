Now that we have a NgInx Pod up and running we can hack into the container. We will demonstrate the power of Falcon and the possibilities using the ELK stack.

#### First step is to spawn into the nginx Pod. 

`kubectl exec -it nginx /bin/bash`{{execute HOST1}}

Now open the **NgInx** tab which is available next to the **Terminal** tab and lookup the current webpage.

#### After we have connected try to replace the content of the *index.html* with sed. 

`sed -i -e 's/Welcome to nginx/Hacked a nginx/g' /usr/share/nginx/html/index.html`{{execute HOST1}}

Now look at the **Nginx** webpage again and see the content has changed, hacked !!! Lucky us we have some traceability in our ELK stack available.

Now open the **Kibana** tab which is available next to the **Terminal** tab and lookup the corresponding events. if you are opening Kibana for the first time you always have to set the *Kibana Index Pattern* with corresponding *Date* attribute. Our index which is currently created is called *logstash-** with a corresponding date attribute in our example is called *@Timestamp*.

![Kibana Experiment3](https://raw.githubusercontent.com/avwsolutions/katacoda-scenarios/master/setup-your-digital-forensics-platform/images/experiment3.png)

Now play around on your es Pod and try to trigger the Falco alerting. Don't forget to *exit* to return to the *management console*

`exit`{{execute HOST1}}
