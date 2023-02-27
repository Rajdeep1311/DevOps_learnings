# DevOps_learnings

# Jenkins CI/CD Project with GitHub Integration using GitHub Webhook

An AWS instance is created and Jenkins is installed on that server. On the AWS management console, in the security section, the security group permissions are accessed and the port 8080 (port in which Jenkins server runs) is given anywhere or private IPv4 access using inbound rules. 
The server private IP is then used to access the port 8080. When the Jenkins dashboard appears, we must make sure to install the GitHub Integration plugin.
A new job is created is created as Pipeline project of deployment. A suitable description is written, the project url from the github, the repository url is added and the branch name is also specified. GitHub hook trigger for GITScm polling is selected as the build trigger.

```sh
 docker-compose down
 docker-compose up -d
```

The following code is used for running the container of the todo-app and this code is written in the Execute Shell and changes are applied.

In the project GitHub repo settings, webhooks options is selected and a new webhook is added. A url is added in the following format

```sh

http://<private -ip>:8080//github-webhook/ 
```

The content type is selected as application/json and it is saved.

The purpose of webhook is that, every time a new pipeline is created the Jenkins server hits in the repo so that any change in the code is also reflected in the creation of the pipeline and running of the application.


# Managing Deployments using Kubernetes Engine

Created a AWS t2.micro instance for using Kubernetes by installing minikube with the help of the following commands :

```sh
 curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 sudo install minikube-linux-amd64 /usr/local/bin/minikube
```
To start your cluster :

```sh
 minikube start
```

Now using the vim text editor in Linux YAML scripts are written for pod, which is the smallest unit in a K8s cluster, deployment file for creating a deployment for the django-todo app, service file for creating a service and ingress file for hosting.

To run the files the following command is used :

```sh
 kubectl appy -f <file_name>
```
If the file contains namespace, which are a kind of tag to group certain files, the following command is used :

```sh
 kubectl appy -f <file_name> -n <namespace_used>
```

For viewing the running pods, deployments, services the following commands are used :

```sh
 kubectl get pods
```
```sh
 kubectl get deployments
```
```sh
 kubectl get services
```

 
