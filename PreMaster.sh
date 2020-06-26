

gcloud config set compute/zone europe-west2
gcloud config set compute/zone europe-west2-b

wget -q --show-progress --https-only --timestamping \
  https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/linux/cfssl \
  https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/linux/cfssljson
chmod +x cfssl cfssljson
sudo mv cfssl cfssljson /usr/local/bin/



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
