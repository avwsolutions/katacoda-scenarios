First we will start the deployment of **Elastic Cloud Kubernetes** on our **K8S** cluster. This task can be easily done using the *kubectl* command. Click on the command below to apply the latest *all-in-one* deployment. During the deployment a custom **K8S** resources are created, which include an several resources under the *.elasticsearch.k8s.elastic.co* namespace. Supported products are Elasticsearch, Kibana and APM. Corresponding rbac configuration is created.

Below some configuration which you can explore using the Kubernetes Admin-UI.

- Elastic-system *Namespace* with corresponding Cluster Role.
- Elastic-operator *Pod* based on a *Stateful Set*.
- A necessary *Service* for accessing the Pods webhook on HTTPS/443.
- *Secrets* for securely storing certificate and token data.

#### Prerequisites

- Ensure that you have the *cluster-admin* role assigned.  

#### Deploy ECK:

`kubectl apply -f https://download.elastic.co/downloads/eck/0.8.0/all-in-one.yaml`{{execute HOST1}}

Use the following command to monitor the deployment progress by requesting the Statefulset logs..

`kubectl -n elastic-system logs -f statefulset.apps/elastic-operator`{{execute HOST1}}
