cd keys
#copy the appropriate kubelet and kube-proxy kubeconfig to each worker instance
for instance in worker-0 worker-1 worker-2; do
  gcloud compute scp ${instance}.kubeconfig kube-proxy.kubeconfig ${instance}:~/
done

