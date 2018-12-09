#!/bin/bash
az webapp create -g stomulti -p stomultiplan -n $1 --deployment-container-image-name nginx:latest
