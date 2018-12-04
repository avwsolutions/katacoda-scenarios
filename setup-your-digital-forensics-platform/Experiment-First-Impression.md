Time to start our first experiment. This experiment is using a API connection towards elasticsearch. During this experiment we will:

* Opening a *BASH* towards our Pods and see the expected result in Kibana.
* Try to access sensitive files, such as *'/etc/shadow'* and see the expected result in Kibana.
* Looking into the default running *falco ruleset*.

#### First we will open a *BASH* session towards our *es* Pod. 

`kubectl exec -it es /bin/bash`{{execute HOST1}}

#### After we have connected try to look at the one or more *sensitive files*.

`cat /etc/shadow`{{execute HOST1}} 

Now open the **Kibana** tab which is available next to the **Terminal** tab and lookup the corresponding events. if you are opening Kibana for the first time you always have to set the *Kibana Index Pattern* with corresponding *Date* attribute. Our index which is currently created is called *sysdig* with a corresponding date attribute in our example is called *time*.

![Kibana Experiment1](https://raw.githubusercontent.com/avwsolutions/katacoda-scenarios/master/setup-your-digital-forensics-platform/images/experiment1.png)

Now play around on your es Pod and try to trigger the Falco alerting. Don't forget to *exit* to return to the *management console*

`exit`{{execute HOST1}}

and remove your current *sysdig-falco* Pods.

`helm delete --purge sysdig-falco-1`{{execute HOST1}}
