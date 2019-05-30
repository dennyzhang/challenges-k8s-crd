# Prepare code
https://github.com/kubernetes/kubernetes/blob/release-1.8/hack/boilerplate/boilerplate.go.txt

git clone git@github.com:jinghzhu/KubernetesCRD.git
git clone git@github.com:kubernetes/code-generator.git

# Start minikube

# Start a container
export docker_image="denny/crd:base"
docker stop my-test; docker rm my-test

docker run -t -d --privileged -h mytest --name my-test \
       -v /Users/zdenny/.kube/config:/root/.kube/config \
       -v /Users/zdenny/.minikube/:/Users/zdenny/.minikube/ \
       -v /Users/zdenny/Dropbox/git_code/challenges-kubernetes/challenges-k8s-crd/PoC/code:/code \
       -v /Users/zdenny/Dropbox/git_code/challenges-kubernetes/challenges-k8s-crd/PoC/code/boilerplate.go.txt:/go/src/k8s.io/code-generator/hack/boilerplate.go.txt \
       --entrypoint=/bin/sh "$docker_image"

# Run test
docker exec -it my-test sh

ls -lth /code
kubectl get pod
