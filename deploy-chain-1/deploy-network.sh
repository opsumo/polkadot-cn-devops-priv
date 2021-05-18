#!/bin/sh

oc login -u kubeadmin -p dpDFV-xamBW-kKAk3-Fi6Lg https://api.crc.testing:6443
oc new-project opsumo-polkadot-test-network && oc project opsumo-polkadot-test-network
oc adm policy add-scc-to-group anyuid system:authenticated
oc apply -f relaychain/pvc.yaml
oc apply -f relaychain/deployment.yaml
oc apply -f relaychain/service.yaml
oc apply -f relaychain/route.yaml