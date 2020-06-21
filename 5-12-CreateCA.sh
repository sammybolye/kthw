mkdir -p keys
echo "Directory Created"

./5-CreateCAFiles.sh
./6-CreateAdminCA.sh
./7-CreateKubeletCA.sh
./8-CreateCtrlMgrCA.sh
./9-CreateKubeProxyCA.sh
./10-SchedulerCA.sh
./11-APIServerCA.sh
./12-SvcAccCA.sh
