


cd keys
#copy the appropriate kubelet and kube-proxy kubeconfig to each worker instance
for instance in worker-0 worker-1 worker-2; do
  gcloud compute scp ../ConfigWorkers.sh  ${instance}.kubeconfig kube-proxy.kubeconfig ca.pem ${instance}-key.pem ${instance}.pem ${instance}:~/
done

gcloud compute ssh worker-0 --command "ls -lrt"

gcloud compute ssh worker-1 --command "ls -lrt"

gcloud compute ssh worker-2 --command "ls -lrt"

