#Deploy the coredns cluster add-on:
kubectl apply -f https://storage.googleapis.com/kubernetes-the-hard-way/coredns.yaml


#List the pods created by the kube-dns deployment:
kubectl get pods -l k8s-app=kube-dns -n kube-system
