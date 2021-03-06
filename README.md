# Project on Container Deployment

### Screenshots are in the [project-files](https://github.com/akshtrikha/cap-project/tree/main/project-files) folder

This project showcases Rolling Deployment of a simple Hello World! Flask app on EKS using eksctl.

Tasks completed by the CI/CD Pipeline

-   Linting Dockerfile and app.py using **hadolint** and **pylint** respectively
-   Building a docker container image and importing the python file to it
-   Uploading the app to **Docker Hub**
-   Creating an **EKS Cluster** using pre defined tasks on **eksctl**
-   Deploying the image to the cluster
-   Two AWS EC2 Instances are created as nodes of the cluster
-   Configuration of kubernetes is handled by [deployment-config](https://github.com/akshtrikha/cap-project/blob/main/deployment-config.yml) file
-   **circleici/aws-eks** and **circleci/kubernetes** orbs are used to write the config file
