
for instance in controller-0 controller-1 controller-2; do 
  gcloud compute scp etcd-configure.sh provisionCtrlPlane.sh configRBACforKubelet.sh ${instance}:~/ 
done
