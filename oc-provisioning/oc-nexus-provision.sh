#!/bin/bash

echo "###############################################################################"
echo "#  MAKE SURE YOU ARE LOGGED IN:                                               #"
echo "#  $ oc login http://console.your.openshift.com                               #"
echo "###############################################################################"

command.deploy() {
  info "Creating namespaces $cicd_prj, $dev_prj, $stage_prj"  
  oc new-project oqss-cicd --display-name="CI/CD"
  sleep 2
    
  oc new-app -f ./application/template.yaml -n oqss-cicd
}
