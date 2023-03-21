# list clusters
kind get clusters
# create cluster
kind create cluster --name cool
# delete cluster
kind delete cluster --name cool
# get info with context
kubectl --context kind-cool cluster-info
