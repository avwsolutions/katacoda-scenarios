Now that we have successfully deployed our Elasticsearch node we still need the visualisation layer, which consists of Kibana. Kibana is the Dashboard application which helps you searching through your data and creating awesome dashboards.

`kubectl apply -f /root/course/kibana.yaml`{{execute HOST1}}

#### Verify that Kibana is running 

Check the pods for Kibana:

`kubectl get pods`{{execute HOST1}}

Check the Kibana logs:  

`kubectl logs kibana|grep "to green"`{{execute HOST1}}

Once Kibana is connected to Elasticsearch, it is ready.  Toward the end of the log file, you  will see an entry telling you that the state has gone to **green**

![Kibana log](https://user-images.githubusercontent.com/25182304/43620199-883f336c-969f-11e8-9225-f84006e14fd9.png)
