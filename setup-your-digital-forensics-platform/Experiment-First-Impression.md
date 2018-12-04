Time to start our first experiment. This experiment is using a API connection towards elasticsearch. During this experiment we will:

⋅⋅* Opening a *BASH* towards our Pods and see the expected result in Kibana.
..* Try to access sensitive files, such as *'/etc/shadow'* and see the expected result in Kibana.
..* Looking into the default running *falco ruleset*.

#### First we will open a *BASH* session towards our *es* Pod. 

`kubectl exec -it es /bin/bash`{{execute HOST1}}

#### After we have connected try to look at the one or more *sensitive files*.

`cat /etc/shadow`{{execute HOST1}} 

Now open the **Kibana** tab which is available next to the **Terminal** tab and lookup the corresponding events.
