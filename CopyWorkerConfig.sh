
for instance in worker-0 worker-1 worker-2; do 
  gcloud compute scp ConfigWorkers.sh  ${instance}:~/ 
done
