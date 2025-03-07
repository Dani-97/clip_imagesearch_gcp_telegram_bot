source necessary_variables.sh

gcloud config set project $GCLOUD_PROJECT_ID
gcloud run deploy python-http-function --source $REPO_PROJECT_ROOT_DIR --function search_images --base-image python312 --timeout 100 --region $REGION --allow-unauthenticated
