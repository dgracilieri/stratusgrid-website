#!/bin/bash

distid=$(aws cloudfront list-distributions --profile default | jq '.DistributionList.Items[] | select(.Comment | contains("stratus")) | {Id: .Id}' | sed 's/"//g' | sed 's/^.\{6\}//' | sed '1d;3d')



