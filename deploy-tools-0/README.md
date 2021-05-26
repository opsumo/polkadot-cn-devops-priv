# Phase 3: Deploy2K8 Monitoring Tools

## Requirements

  * Access to a Kubernetes platform like CRC desribed in [Phase 0](../deploy-chain-0/README.md)

## Implementation

  ### Deploy Prometheus Steps

  1. 
  ```bash
  oc new-project polkadot-network-monitoring && oc project polkadot-network-monitoring && oc new-app prom/prometheus && oc expose dc prometheus --type=NodePort --generator=service/v1 && oc get service 
  oc logs prometheus
  ```

## Reference
  * [Prometheus](https://nimrodshn.medium.com/how-to-deploy-prometheus-on-openshift-4-and-configure-it-to-scrape-pods-metrics-a020ed03d5d8)
  * [Grafana]()
  * [EFK]()
  * [Zipkin]()