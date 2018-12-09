#!/bin/bash
az webapp config storage-account list -g MultiContainerBYOStorage -n $1 -o json
