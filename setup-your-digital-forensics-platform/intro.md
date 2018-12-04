### Welcome

To identify risks and possible threats in our IT landscape, you need to gather all data that is relevant. But how do you know it's relevant ??? With new technologies like Kubernetes (k8s) digital security requires a more sophisticated approach. Do think about the new Security implications containers and orchestrators do introduce, like their fast life-cycle, dynamic scaling and internal traffic flows.Some of those implications can be mitigated by using [Istio](https://istio.io/), but for more fine granular telemetry and analysis we can't rely on only this layer of protection.

For such tasks as fine granular telemetry and analysis we need a flexible toolkit that supports this without sacrificing on richness to extend and scale. 
Sysdig and Elastic Stack are the main ingredients for this toolkit. Combining those two forces will deliver best of both worlds.

### Let's take a look at the goals

First of all we will deploy the necessary components like the Elastic Stack in this Katacoda environment. After these deployment steps we will use [Helm](https://helm.sh/) to deploy our first experiment using Sysdig Falco. During this experiment we will take a look at the powerfull rule-engine and possibilites to automate alerting, in this case towards the Elastic stack. Second experiment will involve extending the default-ruleset with even more extra [rulesets]{https://github.com/draios/falco-extras). During this experiment we will trigger some elasticsearch specific alerts towards elasticsearch, isn't that funny.
Wwe will end with an experiment around Sysdig Inspect and using the core tracing functionality. For this we will identify NgInx related behavior.

### 


This is one of the out of the box dashboards that you will see once you deploy the Elastic Stack in this Katacoda environment.  This is the Docker metrics dashboard that ships with Metricbeat.  It shows an overview of the CPU and Memory use of every container, allows you to drill in to a specific container, and the containers per node.  Looking at the dashboard is much easier than running the equivalent kubectl get, top, describe, etc. commands.

![Kibana Example](https://raw.githubusercontent.com/avwsolutions/katacoda-scenarios/master/setup-your-digital-forensics-platform/images/example1.png)

### A Quick Katacoda Primer
If this is your first time using Katacoda, let me introduce some of the cool ideas:

* In general, you don't need to type.  Most of the time, you can simply click on a command in the instructions to run it.
* If you need access to a web browser, look for tabs at the top of the terminal window. In this course you will need three pages - one for Nginx, one for Kibana and one for Sysdig-Inspect. You should see a *NgInx*, *Kibana* tab and a *Sysdig-Inspect* tab in the terminal. Likewise, once you have deployed the applications running you should open that tab.
* Each time you start or restart a course everything gets reset. If you misconfigure something somehow, simply restart the course.
