#!/bin/bash

echo "###############################################################################"
echo "#  MAKE SURE YOU ARE LOGGED IN:                                               #"
echo "#  $ oc login http://console.your.openshift.com                               #"
echo "###############################################################################"

function deploy() {
    echo "############################################################"
    echo "Importing image"
    echo "############################################################"
    
    oc new-project oqss-cicd --display-name="CI/CD"
    sleep 2
    
    oc new-app -f ./application/template.yaml -n oqss-cicd
}
