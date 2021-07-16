#!/bin/bash -x

# getting variables
user=$1
pat=$2
org=$3
project_name=$4
data_file="./ado-project-data.json"

# modify json paylod
sed  -i ""  "s|ProjectName|$project_name|g" $data_file 

# create project 
curl -u $1:$2 --header "Content-Type: application/json"  \
              -X POST  --data "@./ado-project-data.json"   \
              https://dev.azure.com/mbenachour/_apis/projects?api-version=6.0

