#!/bin/bash
if [ $# -gt 0 ] 
  then
    region="--region $1"
  else
    region="--region $(aws configure get region)"
fi

for i in $(aws lambda list-functions $region --output json | jq '.Functions[].FunctionName' | sed 's/"//g')
do
	mkdir -p functions/$i
	aws lambda get-function --function-name $i --query 'Code.Location' $region --output json  | xargs wget -O functions/$i.zip
	unzip functions/$i.zip -d functions/$i/
done