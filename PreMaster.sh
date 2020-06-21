./1-createvpc.sh
./2-reserve-staticip.sh
./3-CreateCtrlPlaneInstances.sh
./4-Create-WorkerNoder.sh
./5-12-CreateCA.sh
./13-ProvisionCerts.sh
./14-GenK8sConfigFilesForAuth.sh
./15-PropageKubeConfig.sh
./16-ManageEncryptionkey.sh
./CopyCtrlPlaneConfig.sh
./CopyWorkerConfig.sh
gcloud compute ssh controller-0 --command "sh etcd-configure.sh;sh provisionCtrlPlane.sh"
gcloud compute ssh controller-1 --command "sh etcd-configure.sh;sh provisionCtrlPlane.sh"
gcloud compute ssh controller-2 --command "sh etcd-configure.sh;sh provisionCtrlPlane.sh"
gcloud compute ssh controller-0 --command "sh configRBACforKubelet.sh"
gcloud compute ssh worker-0 
