gcloud compute ssh controller-0 --command "sh etcd-configure.sh;sh provisionCtrlPlane.sh"
gcloud compute ssh controller-1 --command "sh etcd-configure.sh;sh provisionCtrlPlane.sh"
gcloud compute ssh controller-2 --command "sh etcd-configure.sh;sh provisionCtrlPlane.sh"
gcloud compute ssh controller-0 --command "sh configRBACforKubelet.sh"
