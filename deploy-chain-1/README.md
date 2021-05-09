# Phase 1: Deploy2K8 Test Polkadot Relay Chain + (Validators x n + Parachain + Collators x m) x o + CICD

The goal here in this case is to show the whole theatre of a Polkadot Network deployment in a mature Kubernetes platform like Openshift. Where,
  * n is the number of validators to spin-up
  * m is the number of Collators to spin-up
  * o is the number of Parachain set to sprin-up

## Requirements
[Refer to deploy-chain-phase or priority 0](../deploy-chain-0/README.md)

## Steps

  1. Deploy the main blockchain or relay chain
  2. Deploy the Validators
  3. Deploy the Parachain
  4. Deploy the Collators
  5. Deploy a Fisherman
  6. Apply CICD on each item from 1-5
  7. Apply Blue-Green on each item from 1-5