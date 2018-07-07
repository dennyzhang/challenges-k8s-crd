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

Scenario-102: Create a CRD with a real controller
- Requirements:
```
1. Install and start minikube
2. Create a CRD
3.
```

# Background & Highlights
Read below links, before you trying the demo

```
https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/
https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/
```

# Procedures

- Start env
```
minikube start

kubectl apply -f ./crd.yml
kubectl apply -f ./project.yml
```

- [crd.yml](crd.yml): We have defined resource kind called `Project`. It has a property called replicas
- [project.yml](project.yml): We have created a fake project and customized the replica property


## Verify Deployment
```
kubectl get projects

# ,----------- Sample Output
# | bash-3.2$ kubectl get projects
# | NAME              CREATED AT
# | example-project   1d
# `-----------

kubectl describe project example-project

kubectl delete project example-project

kubectl get projects
```

Destroy env:
- Delete k8s resources
```
kubectl delete -f ./project.yml
kubectl delete -f ./crd.yml
```

# More resources
- https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/

<a href="https://www.dennyzhang.com"><img align="right" width="185" height="37" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/dns_small.png"></a>
