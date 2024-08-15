terraform {
  required_version = ">= 1.6, < 2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.62"
    }

    archive = {
      source  = "hashicorp/archive"
      version = "2.5.0"
    }
  }
}

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
