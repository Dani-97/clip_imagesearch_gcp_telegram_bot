source necessary_variables.sh

gcloud projects create $PROJECT_NAME_ID
gcloud alpha billing projects link $PROJECT_NAME_ID --billing-account=$BILLING_ACCOUNT_ID
