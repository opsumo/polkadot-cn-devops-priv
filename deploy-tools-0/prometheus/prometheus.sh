#!/bin/sh

oc new-project polkadot-network-monitoring && oc project polkadot-network-monitoring && oc new-app prom/prometheus && oc expose deploy/prometheus --type=NodePort --generator=service/v1 && oc get service
#oc new-project cluster-monitoring && oc project cluster-monitoring