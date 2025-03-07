source necessary_variables.sh

gcloud compute scp ./install_packages.sh  $VM_NAME:/home/ubuntu/
gcloud compute scp ./import_telebot_project.sh  $VM_NAME:/home/ubuntu/
gcloud compute scp ./debug_telebot_docker_cont.sh $VM_NAME:/home/ubuntu
gcloud compute scp ./run_telebot_docker_cont.sh $VM_NAME:/home/ubuntu
gcloud compute ssh --project=$PROJECT_ID --zone=$ZONE $VM_NAME
