#!/bin/bash
kubectl apply -f https://download.elastic.co/downloads/eck/0.8.0/all-in-one.yaml
kubectl -n elastic-system logs statefulset.apps/elastic-operator | grep "starting the webhookserver" | while read line
do
  kubectl apply -f course/elasticsearch.yaml
  kubectl apply -f course/kibana.yaml
  kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml
  kubectl proxy --address=0.0.0.0 --accept-hosts='^.*$' &
done
