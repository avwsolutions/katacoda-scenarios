#!/bin/bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml
kubectl proxy --address=0.0.0.0 --accept-hosts='^.*$' &
