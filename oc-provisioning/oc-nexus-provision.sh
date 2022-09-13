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
	echo "To Do!"
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
