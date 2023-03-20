# MyWebUI
This repository presents my small training project.

Initially, I had a folder with application files. My task was to deploy it to a kubernetes cluster.

Solving the problem step by step:
1. Writing a dockerfile to build an application in a container (MyWebUI/application/Dockerfile);

2. Provision of a zonal 2-node cluster with own network and google artifact registry using Terraform (MyWebUI/infrastructure + MyWebUI/modules);

3. Writing pipelines:
- CI pipeline  in Azure DevOps providing to deploy infrastructure in the google cloud ( MyWebUI/azure-pipelines-infra.yml);
- CI pipeline in Azure DevOps providing building and sending the image to the Google Artifact Registry (MyWebUI/azure-pipelines-bap-gar.yml) or to the Docker Hub (MyWebUI/azure-pipelines-bap-dock.yml);

4. Writing a Helm Chart for deploying the application to Kubernetes (MyWebUI/Chart_for_deploy_to_gcp);

5. The next step was to be the release pipeline of deploying the application in the k8s cluster, but due to the end of access to the platform, it was not possible. Therefore, it was decided to write a short bash script to deploy the application in the minicube (MyWebUI/gitlab_and_bash/script). 
