#!/bin/bash
status=1
kubectl apply -f https://download.elastic.co/downloads/eck/0.8.0/all-in-one.yaml
while [ $status -ne 0 ]
do
  kubectl -n elastic-system logs statefulset.apps/elastic-operator | grep "starting the webhookserver" 
  status=$?
  echo $status
done
kubectl apply -f /root/course/elasticsearch.yaml
kubectl apply -f /root/course/kibana.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml
kubectl proxy --address=0.0.0.0 --accept-hosts='^.*$' &
