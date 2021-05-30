# polkadot-cn-devops-CICD

## Description
  In a [Polkadot](https://polkadot.network) hackaton dubbed as Buildathon: India, my [Opsumo](www.opsumo.co) team aims to take part in the category of "Blockchain Using Substrate, Open Hack ( Dev Tooling / Block Explorer / Block Visualiser etc.)" 

  A [Cloud Native Computing Foundation](cncf.io) compliant DevOps culture solution.

## Objective   

  At its simplest but profoundly elegant way, we intend to demonstrate a [CNCF](cncf.io) compliant DevOps culture solution.  We have resolved to provide a way to automatically spin-up test infrastructures for hosting Polkadot blockchains, components, networks and tools into hybrid/multiple clouds. In order to attain CNCF compliance we believe that the best cloud-native platform that can host the target objectives is to use [Kubernetes](https://kubernetes.io). We however further argue (highly opinionated in some quarters), that in order to achieve a uniformly written automation script, we have to leverage the most mature Kubernetes platform provider in the market, i.e [Redhat Openshift](openshift.com). As secondary objective, we also intend to implement a demo of an automated deployment pipelines that can effectively trigger Continuous Integration and Continuous Deployment (CICD) of a desired Blockchain configuration. And in addition, we also have to provide, on a per need or on-demand basis, a way to provision and deploy a corresponding set of monitoring tools. CICD is the heart of DevOps, and fully realizing its implementation and gain from its benefits is the quintiessential ideals of the culture. 
  
  Autotmated DevOps Tooling is what we aim to accomplish in this Buildathon: India 2021.

## Rationale

  First off, is the why? Why it is essential?

  1. We recognize that for a would be layer-1 or 2 app development like Parachains, Parathread, Bridge, Validator, Collator, Smart Contracts, NFT, DeFi, etc starting from scratch is hard. So what if, there exist pre-baked set of initial Infra as Code provisioner, Cluster, Network and Security setup that a would-be team could leverage and use to scaffold their own use-cases as a foundational building block? Imagine the win-win benefit it could give for the Polkadot Network community. Speed of development could certain attain greater velocities, and with it, a more lively and active community. For the teams using it, again, the value is speed to market. 

  2. Like in the first, what if we offer a service for a substrate-node-template to be readily provisioned in a cloud infra and all the she-bangs needed to speed-up development of other custom blockchain that will address a use case, such as DeFi, smart-contract or another cryto-tech. 

  Secondly is the what? While Docker it seems still is the status quo, and we can see that it simply works, we can't argue with that! But why do we have to introduce Kubernetes, and even more so, Redhat Openshift?! For so many reasons we don't have to repeat saying, like the explanations from the following articles:

  1. [K8 vs Docker primer](https://containerjournal.com/topics/container-ecosystems/kubernetes-vs-docker-a-primer/)
  2. [K8 vs Docker by SumoLogic](https://www.sumologic.com/blog/kubernetes-vs-docker/)
  3. [K8 vs Docker by NewRelic](https://newrelic.com/blog/best-practices/docker-vs-kubernetes)
  4. [K8 vs Docker by IBM](https://www.ibm.com/cloud/blog/kubernetes-vs-docker)
  5. [K8 vs Docker by Microsoft](https://azure.microsoft.com/en-us/topic/kubernetes-vs-docker/)

  However, few of the most compelling DevOps arguments namely networking, security, automated scheduling, scaling and high-availability in production environments are the key features that Docker can never achieve on its own. Not even with Docker Swarm -- until finally Docker, Inc themselves have raised the [white flag](https://www.linkedin.com/pulse/part-ii-why-docker-openshift-4-rhel-8-scott-mccarty/), and recognized the supremacy that Kubernetes can provide, so they have to adapt to focus on tooling. Try running docker images each time in a cluster and configure all these each time, like snowflakes, it easily crumbles and is quite a painful and a stressful process to remediate or fix. Multiply these challenges when you try to deploy hundreds to thousands of these in multiple clouds, and an ocean of differences will be more evident, and cycle of re-inventing the wheel commences. 
  
  Remember, the DevOps culture aims to address the "joy" of being in either of the role as Developer and consequently do Operations or vice versa (as SRE), i.e. to function dually effectively and reliably. By far, only Kubernetes have nearly been able to achieve the DevOps/SRE ideals, i.e. of enabling a platform for automated integration and deployment, at scale, securely and covering as much of the many architectural ilities concerns. Albeit the benefits, we also acknowledge the fact that it is really hard to learn it at first. 

  But why [Openshift](https://www.openshift.com/blog/whats-inside-openshift-4), again? Well, like Linux, Kubernetes is likened to a kernel, it needs a distribution with a specific set of tools, and by far, Redhat's Kubernetes tooling is the most superior among the many that are out there. Take the case of [CRC (Code Reader Containers)](https://developers.redhat.com/products/codeready-containers/overview), a desktop app that allows us to quickly use Openshift flavored Kubernetes in our laptops, i.e. for those with well-endowed resources. Furthermore compelling are the following explainers:

  1. [Kubernetes-vs-openshift-article](https://www.simplilearn.com/kubernetes-vs-openshift-article)

  2. [Redhat Openshift](https://www.redhat.com/en/topics/containers/red-hat-openshift-kubernetes)

  3. [7 most critical differences between Openshift and Kubernetes](https://www.dataversity.net/openshift-vs-kubernetes-the-seven-most-critical-differences/)

  4. [BMC pov on  Kubernetes and Openshift](https://www.bmc.com/blogs/kubernetes-vs-openshift/)

  How? 

  ### Implementing Phase 0: Deploy2K8 Test Relay Chain + UI + CICD

  Upon introspection from the initial attempt to successfully execute [Phase 0](./deploy-chain-0/README.md), to do a quick and dirty semi-automatic stateless deployment of a ParityTech released Polkadot Image with a UI viewer, we have arrived to a conclusion that the following Phases and targets could also be achieved, even though not necessarily within the Buildathon timeline.

  The following other important Phases (can be interchanged also as a Priority) are also soft-targeted for implementation during the Buildathon:

  1. [Phase 1](./deploy-chain-1/README.md): Deploy2K8 Test Polkadot Relay Chain + (Validators x n + Parachain + Collators x m) x l + CICD
  2. [Phase 2](./deploy-chain-2/README.md): Deploy2K8 Test (Custom Chain x n) + UI + CICD, via Substrate
  3. [Phase 3](./deploy-tools-0/README.md): Deploy2K8 Monitoring Tools
  4. [Phase 4](./deploy-chain-3/README.md): Deploy2K8 Secure Validators + CICD, Deploy2K8 Secure Collators  + CICD, Deploy2K8 Secure Parachain + CICD, Deploy2K8 Secure Fisherman + CICD
  5. [Phase 5](./deploy-chain-4/README.md): Deploy2K8 Generic Test (Custom Chain(with own tokenomics) x n) + UI + CICD
  6. [Phase 6](./deploy-chain-5/README.md): Deploy2K8 Smart Contract Chain  + CICD  

  A couple or several of the Phases enumerated above can be implemented in parallel. E.g., P1 and P2 can be targetted for implementation during the Buildathon from April 29 to May 30. While the other phases could be implemented at other timelines, ParityTech and W3 permitting.

  ## To make P0 work
  Setup the github secrets, do the clone and checkout like below, update the ./.github/workflows/openshift.yml, then git push

  ```bash
  git clone https://github.com/opsumo/polkadot-cn-devops-priv.git
  git checkout -b develop
  vi README.md #Do some change, then save :wp
  git commit -a -m "any good context"
  git push origin develop
  ```
