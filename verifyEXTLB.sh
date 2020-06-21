KUBERNETES_PUBLIC_ADDRESS=$(gcloud compute addresses describe kubernetes-the-hard-way \
  --region $(gcloud config get-value compute/region) \
  --format 'value(address)')
echo $KUBERNETES_PUBLIC_ADDRESS
curl --cacert keys/ca.pem https://${KUBERNETES_PUBLIC_ADDRESS}:6443/version
