export ENTRY_POINT=search_images
export LOCAL_DEPLOYMENT_NAME=client_image_search_client
export REPO_ROOT_DIR=./clip_image_search_client

cd $REPO_ROOT_DIR
python3 -m venv ./venv
source ./venv/bin/activate
pip3 install -r requirements.txt
functions-framework --target search_images
