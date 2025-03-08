source necessary_variables.sh

gcloud run deploy python-http-function --source $REPO_PROJECT_ROOT_DIR --function search_images --base-image python312 --timeout 100 --region $REGION --allow-unauthenticated
