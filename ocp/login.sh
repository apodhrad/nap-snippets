# with oc login
oc login --token "${TOKEN}" --insecure-skip-tls-verify=true
oc login -u kubeadmin -p "${PASS}" "${APISERVER}" --insecure-skip-tls-verify=true

# with KUBECONFIG
KUBECONFIG=/path/to/kubeconfig oc get pods
# or
export KUBECONFIG=/path/to/kubeconfig
oc get pods

# with --context <CONTEXT_NAME>
# cat ~/.kube/config | yq -r '.contexts[].name'
oc --context "${CONTEXT_NAME}" get pods
