source necessary_variables.sh

gcloud config set project $PROJECT_NAME_ID
gcloud alpha billing projects link $PROJECT_NAME_ID --billing-account=$BILLING_ACCOUNT_ID
