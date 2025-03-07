source necessary_variables.sh

# You need to execute this the first time you want to connect
# to the VM using a SSH connection. The gcloud tool will
# create a SSH key pair for you.
gcloud compute ssh --project=$PROJECT_ID --zone=$ZONE $VM_NAME
cp -R ~/.ssh ./
