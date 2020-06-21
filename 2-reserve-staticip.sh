#create a static ip
gcloud compute addresses create kubernetes-the-hard-way \
  --region $(gcloud config get-value compute/region)

#list the external IP
gcloud compute addresses list --filter="name=('kubernetes-the-hard-way')"

