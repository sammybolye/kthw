
#Create VPC in manual mode
gcloud compute networks create kubernetes-the-hard-way --subnet-mode custom

#Create Subnet
gcloud compute networks subnets create kubernetes \
  --network kubernetes-the-hard-way \
  --range 10.240.0.0/24

#Add firewall rules 
# all-internal
gcloud compute firewall-rules create kubernetes-the-hard-way-allow-internal \
  --allow tcp,udp,icmp \
  --network kubernetes-the-hard-way \
  --source-ranges 10.240.0.0/24,10.200.0.0/16

#Add icmp, ssh, https
gcloud compute firewall-rules create kubernetes-the-hard-way-allow-external \
  --allow tcp:22,tcp:6443,icmp \
  --network kubernetes-the-hard-way \
  --source-ranges 0.0.0.0/0

#List the firewall-rules-list
gcloud compute firewall-rules list --filter="network:kubernetes-the-hard-way"
