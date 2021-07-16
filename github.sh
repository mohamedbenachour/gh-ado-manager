#!/bin/bash

# getting variables
user=$1
pat=$2
org=$3
repo_name=$4
data_file="./github-repo-data.json"

# modify json paylod
sed -i "" "s/RepoName/$repo_name/g" "$data_file"


curl -u $user:$pat \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/orgs/$org/repos" \
  -d "@./github-repo-data.json" 
  