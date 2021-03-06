terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "CloudTesting"

    workspaces {
      prefix = "event-driven-system-infrastructure-"
    }
  }
}
