# polkadot-cn-devops-priv

## Objective: 
  In a Polkadot hackaton dubbed as Buildathon: India, my [Opsumo](www.opsumo.co) team aims to take part in the category of "Blockchain Using Substrate,Open Hack ( Dev Tooling / Block Explorer / Block Visualiser etc.)" 

  At its simplest but profoundly elegant demonstration of our DevOps skills, we resolved to provide a way to automatically spin-up test infrastructures for hosting Polkadot blockchains, components and networks into multiple clouds. In order to attain CNCF compliance we think that the best cloud-native platform that can host the target objectives in a uniformly written script is to leverage the most mature Kubernetes platform provider in the market, Redhat Openshift. As secondary objective, we also intend implement a demonstration of automated deployment pipelines that can effectively trigger Continuous Integration and Continuous Deployment (CICD) of a desired Blockchain configuration. CICD is the heart of DevOps, and fully realizing its benefits is the quintiessential ideals of DevOps. 
  
  DevOps Tooling is what we aim to accomplish in this Buildathon: India 2021.

  ### Implementing Phase 0: Deploy2K8 Test Relay Chain + UI + CICD

  Upon introspection from the initial attempt to successfully execute [Phase 0](./deploy-chain-0/README.md), to do a quick and dirty semi-automatic stateless deployment of a ParityTech released Polkadot Image with a UI viewer, we have arrived to a conclusion that the following Phases and targets could also be achieved, even though not necessarily within the Buildathon timeline.

  The following other important Phases are also soft-targeted for implemenntation:

  1. Phase 1: Deploy2K8 Test Relay Chain + (Validators x n + Parachain + Collators x m) x l + CICD
  2. Phase 2: Deploy2K8 Test (Custom Chain x n) + UI + CICD
  3. Phase 3: Deploy2K8 Secure Validators + CICD, Deploy2K8 Secure Collators  + CICD, Deploy2K8 Secure Parachain + CICD, Deploy2K8 Secure Fisherman + CICD
  4. Phase 4: Deploy2K8 Test (Custom Chain(with own tokenomics) x n) + UI + CICD
  5. Phase 5: Deploy2K8 Smart Contract Chain  + CICD  

  A couple or several of the Phases enumerated above can be implemented in parallel. E.g., P1 and P2 can be targetted for implementation during the Buildathon from April 29 to May 30. While the other phases could be implemented at other timelines, ParityTech and W3 permitting.