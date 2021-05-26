#!/bin/sh

oc delete deployment.apps/polkadot
oc delete service/polkadot-wss
oc delete route.route.openshift.io/polkadot-wss
oc delete project/opsumo-polkadot-test-network