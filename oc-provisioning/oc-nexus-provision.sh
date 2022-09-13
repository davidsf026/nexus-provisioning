#!/bin/bash

function deploy() {
  oc new-project oqss-cicd --display-name="CI/CD"
  
  sleep 2
  
  oc new-app -f ./application/template.yaml -n oqss-cicd  
}
