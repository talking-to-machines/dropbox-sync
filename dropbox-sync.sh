#!/bin/bash

# Variables
DROPBOX_BASE_PATH="/Users/raymondlow/Library/CloudStorage/Dropbox/T2M Projects/GitHub/"
declare -A REPOSITORIES=(
    ["dropbox-sync"]="https://github.com/talking-to-machines/dropbox-sync.git"
    ["video-transcript"]="https://github.com/talking-to-machines/video-transcript.git"
    ["talking-to-machines"]="https://github.com/talking-to-machines/talking-to-machines.git"
    ["llama-finetuning"]="https://github.com/talking-to-machines/llama-finetuning.git"
    ["synthetic-agent-generation"]="https://github.com/talking-to-machines/synthetic-agent-generation.git"
    ["survey-processing-code"]="https://github.com/talking-to-machines/survey-processing-code.git"
    ["digital-census"]="https://github.com/talking-to-machines/digital-census.git"
)

# Loop through each repository in the list
for repo_name in "${!REPOSITORIES[@]}"; do
    REPO_URL="${REPOSITORIES[$repo_name]}"
    REPO_PATH="$DROPBOX_BASE_PATH/$repo_name"
    
    if [ -d "$REPO_PATH/.git" ]; then
        echo "Updating $repo_name in $REPO_PATH..."
        cd "$REPO_PATH" && git pull
    else
        echo "Cloning $repo_name into $REPO_PATH..."
        git clone "$REPO_URL" "$REPO_PATH"
    fi
done
