#!/bin/bash

command.deploy()
{
	echo "############################################################"
	echo "Creating Project"
	echo "############################################################"

	oc new-project oqss-cicd --display-name="CI/CD"
	sleep 2

	oc new-app -f ./application/template.yaml -n oqss-cicd
}

command.help()
{
	echo
	echo "Usage:"
	echo " oc-nexus-provision.sh [command]"
	echo
	echo "Example:"
	echo " oc-nexus-provision.sh help"
	echo
	echo "Example:"
	echo " oc-nexus-provision.sh deploy --project-suffix mydemo"
	echo
	echo "COMMANDS:"
	echo "   deploy                   Set up the demo projects and deploy demo apps"
	echo "   help                     Show how to use the script"
	echo
}

if [ "$1" = "help" ]
then
	command.help
elif [ "$1" = "deploy" ]
then
	command.deploy
else
	echo "Invalid choice..."
fi
