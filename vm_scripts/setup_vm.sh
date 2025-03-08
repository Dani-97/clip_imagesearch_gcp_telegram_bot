source necessary_variables.sh

gcloud config set compute/region $ZONE
gcloud config set compute/zone $ZONE
gcloud compute instances create $VM_NAME --machine-type "e2-standard-2" --hostname=$HOSTNAME --image-project "debian-cloud" --image-family "debian-11" --subnet "default"
