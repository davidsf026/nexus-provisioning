# Nexus Provisioning

## Requirements
- A Project in your OpenShift cluster.

## Informations:
 - Nexus dashboard will be accessible in http://nexus-$YOUR_CICD_PROJECT_NAME.apps.middleware.rhbr-lab.com/nexus
 - Default credentials are:
    - **User:** admin
    - **Password:** admin123

## Image:
- **Image in Catalog:** https://catalog.redhat.com/software/containers/sonatype/nexus-repository-manager/594c281c1fbe9847af657690?tag=3.41.1-ubi-1&push_date=1661188556000
- **Image in Registry:** registry.connect.redhat.com/sonatype/nexus-repository-manager
- **Version (latest at 2022-09-12):** 3.41.1-ubi-1

## Deploy With Kustomize:

    oc new-project oqss-cicd
    git clone https://github.com/davidsf026/nexus-provisioning/
    oc apply -k ./nexus-provisioning/kustomize

## Deploy With OC Commands:

    oc new-project oqss-cicd
    oc import-image sonatype/nexus-repository-manager:3.41.1-ubi-1 --from=registry.connect.redhat.com/sonatype/nexus-repository-manager:3.41.1-ubi-1 --confirm
    oc new-app sonatype/nexus
    oc expose svc nexus

## Sources:
[Deploy Nexus With Maven](https://docs.openshift.com/container-platform/3.11/dev_guide/dev_tutorials/maven_tutorial.html)
