terraform {
  cloud {
    organization = "manishmyana"
    workspaces {
      tags = ["Terraform_dev"]
    }
  }
}