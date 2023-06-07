oc create -f - <<EOF
apiVersion: operators.coreos.com/v1alpha1
kind: CatalogSource
metadata:
  name: $NAME
  namespace: $NAMESPACE
spec:
  sourceType: grpc
  image: $IIB
EOF
