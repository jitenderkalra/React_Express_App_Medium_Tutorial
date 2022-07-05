## Create ECR repository
resource "aws_ecr_repository" "repository" {
    
  name = ReactExpress
}

## Build docker images and push to ECR
resource "docker_registry_image" "backend" {
  
    name = "${aws_ecr_repository.repository[each.key].repository_url}:latest"

    build {
        context = "../React_Express_App_Medium_Tutorial"
        dockerfile = "app.Dockerfile"
    }  
}

## Setup proper credentials to push to ECR
