Table of Contents
=================
<a href="https://www.dennyzhang.com"><img align="right" width="201" height="268" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/denny_201706.png"></a>

   * [Requirements](#requirements)
   * [Background &amp; Highlights](#background--highlights)
   * [Procedures](#procedures)
      * [Deployment](#deployment)
      * [Verify Deployment](#verify-deployment)
   * [More resources](#more-resources)

# Requirements
<a href="https://www.dennyzhang.com"><img align="right" width="185" height="37" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/dns_small.png"></a>

Scenario-101: Create a dummy CRD resource
- Objective: Create a dummy CRD resource
- Requirements:
```
1. Install and start minikube
2. Create a dummy resource
3. Create/read/update/delete this CRD
```

# Background & Highlights
- Q:

# Procedures

- Start env
```
minikube start

kubectl apply -f ./crd.yml
```

## Verify Deployment
```
kubectl get projects
```

Destroy env:
- Delete k8s resources
```
kubectl delete -f ./project.yaml
kubectl delete -f ./crd.yaml
```

# More resources
- 

<a href="https://www.dennyzhang.com"><img align="right" width="185" height="37" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/dns_small.png"></a>
