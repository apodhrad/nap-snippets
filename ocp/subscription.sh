# Needded for all-namespaced operators
oc create -f - <<EOF
kind: OperatorGroup
apiVersion: operators.coreos.com/v1
metadata:
  name: redhat-layered-product-og
  namespace: $NS
spec: {}
EOF

# Crate a subscription which will create the operator
oc create -f - <<EOF
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  name: addon-connectors-operator
  namespace: $NS
spec:
  channel: $CHANNEL
  installPlanApproval: Automatic # or Manual
  name: $PACKAGE
  source: $CATALOG_NAME
  sourceNamespace: $CATALOG_NS
  # startingCSV: $CSV
EOF
