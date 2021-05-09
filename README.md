# polkadot-cn-devops

## Objective 
  In a Polkadot hackaton dubbed as Buildathon: India, my [Opsumo](www.opsumo.co) team aims to take part in the category of "Blockchain Using Substrate,Open Hack ( Dev Tooling / Block Explorer / Block Visualiser etc.)" 

  At its simplest but profoundly elegant demonstration of our DevOps skills, we resolved to provide a way to automatically spin-up test infrastructures for hosting Polkadot blockchains, components and networks into multiple clouds. In order to attain CNCF compliance we think that the best cloud-native platform that can host the target objectives in a uniformly written script is to leverage the most mature Kubernetes platform provider in the market, Redhat Openshift. As secondary objective, we also intend implement a demonstration of automated deployment pipelines that can effectively trigger Continuous Integration and Continuous Deployment (CICD) of a desired Blockchain configuration. CICD is the heart of DevOps, and fully realizing its benefits is the quintiessential ideals of DevOps. 
  
  DevOps Tooling is what we aim to accomplish in this Buildathon: India 2021.

  ### Implementing Phase 0: Deploy2K8 Test Relay Chain + UI + CICD

  Upon introspection from the initial attempt to successfully execute [Phase 0](./deploy-chain-0/README.md), to do a quick and dirty semi-automatic stateless deployment of a ParityTech released Polkadot Image with a UI viewer, we have arrived to a conclusion that the following Phases and targets could also be achieved, even though not necessarily within the Buildathon timeline.

  The following other important Phases (can be interchanged also as a Priority) are also soft-targeted for implementation during the Buildathon:

  1. [Phase 1](./deploy-chain-1/README.md): Deploy2K8 Test Polkadot Relay Chain + (Validators x n + Parachain + Collators x m) x l + CICD
  2. [Phase 2](./deploy-chain-2/README.md): Deploy2K8 Test (Custom Chain x n) + UI + CICD
  3. [Phase 3](./deploy-chain-3/README.md): Deploy2K8 Secure Validators + CICD, Deploy2K8 Secure Collators  + CICD, Deploy2K8 Secure Parachain + CICD, Deploy2K8 Secure Fisherman + CICD
  4. [Phase 4](./deploy-chain-4/README.md): Deploy2K8 Generic Test (Custom Chain(with own tokenomics) x n) + UI + CICD
  5. [Phase 5](./deploy-chain-5/README.md): Deploy2K8 Smart Contract Chain  + CICD  

  A couple or several of the Phases enumerated above can be implemented in parallel. E.g., P1 and P2 can be targetted for implementation during the Buildathon from April 29 to May 30. While the other phases could be implemented at other timelines, ParityTech and W3 permitting.

## Rationale
  Docker is the status quo, and it works! Why introduce Kubernetes, even more so, Redhat Openshift?! For so many reasons we don't have to repeat saying, like the explanations from the following articles:

  1. [K8 vs Docker primer](https://containerjournal.com/topics/container-ecosystems/kubernetes-vs-docker-a-primer/)
  2. [K8 vs Docker by SumoLogic](https://www.sumologic.com/blog/kubernetes-vs-docker/)
  3. [K8 vs Docker by NewRelic](https://newrelic.com/blog/best-practices/docker-vs-kubernetes)
  4. [K8 vs Docker by IBM](https://www.ibm.com/cloud/blog/kubernetes-vs-docker)
  5. [K8 vs Docker by Microsoft](https://azure.microsoft.com/en-us/topic/kubernetes-vs-docker/)

  However, few of the most compelling DevOps arguments namely networking, security, automated scheduling, scaling and high-availability in production environments are the key features that Docker can never achieve on its own, not even with Docker Swarm -- until Docker, Inc themselves have raised the white flag, and recognized the supremacy that Kubernetes can provide so they have to adapt. Try running docker images each time in a cluster and configure all these each time like snowflakes, it easily crumbles and is quite a painful and stressful process. Multiply these challenges when you try to deploy hundreds to thousands of these in multiple clouds. 
  
  Remember, DevOps aims to address the "joy" of being in the role, and only Kubernetes has so far have nearly been able to achieve this aim. Although, we also acknowledge the fact that it is really hard to learn it at first. 

  Why Openshift? Well, like Linux, Kubernetes is likened to a kernel, it needs a distribution with a secific set of tools, and by far, Redhat's Kubernetes tooling is the most superior among the many that are out there. Take the case of CRC (Code Reader Containers), a desktop app that allows us to quickly use Openshift flavored Kubernetes in our laptops. Furthermore compelling are the following explainers:

  1. [Kubernetes-vs-openshift-article](https://www.simplilearn.com/kubernetes-vs-openshift-article)

  2. [Redhat Openshift](https://www.redhat.com/en/topics/containers/red-hat-openshift-kubernetes)

  3. [7 most critical differences between Openshift and Kubernetes](https://www.dataversity.net/openshift-vs-kubernetes-the-seven-most-critical-differences/)

  4. [BMC pov on  Kubernetes and Openshift](https://www.bmc.com/blogs/kubernetes-vs-openshift/)
