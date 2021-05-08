# P0: Deploy2K8 Test Relay Chain + UI + CICD

This is our initial attempt to deploy a Polkadot Blockchain to a local Kubernetes Cluster in a Pod.

The intent here is to showcase that a Polkadot Image, in this case, the container found in the public Dockerhub registry as pointed to from the official ParityTech Polkadot github repository can be deployed to a Kubernetes platform using a stateless Deployment manifest. In addition, deploy a corresponding UI such as the Polkadot-JS in a container.

  ### Requirements
  1. A Linux Deployment Machine. 
    Machine Specifications: 
      * 4 Core, 16GB RAM, with large free storage space
      * Docker, Git
  2. A Kubernetes platform. Local or on-prem Datacenter or on-cloud VPC
    Machine Specifications: 
      * 4-8 Core, 16-64GbRAM, with large free storage space
      * Minikube or CRC with Openshift 4.x or OKD 4.x or Openshift 4.x
      * Able to login to a Kubernetes platform via Kubectl or oc CLI. Able to view the Openshift dashboard.

  ### Steps
  1. Develop the Deployment Manifest for the Polkadot image. The manifest specs

```yaml  
apiVersion: apps/v1
kind: Deployment
metadata:
  name: polkadot
spec:
  selector:
    matchLabels:
      app: polkadot
  replicas: 1
  template:
    metadata:
      labels:
        app: polkadot
    spec:
      containers:
      - name: polkadot
        image: parity/polkadot:latest
        args: ["--name", "polkadot-test","--chain","westend","--ws-external","--rpc-external", "--rpc-cors", "all"]
        ports:
        - containerPort: 9944
          name: wss
        - containerPort: 9933
        - containerPort: 30333
        volumes:
        - name: polkadot
        mountPath: /polkadot
    volumeMounts:
      name: polkadot
      persistentVolumeClaim:
        claimName: polkadot-pvc
      spec:
      accessModes: [ "ReadWriteOnce" ]
      volumeMode: Filesystem
      resources:
        requests:
          storage: 1Gi        
```
  

  2. Deploy to kubernetes by calling 

```bash
oc apply -f deployment.yaml or kubectl apply 
```
