
  terraform {
     backend "s3" {
        bucket         	   = "stack-eks"
        key              	   = "state/terraform.tfstate"
        region         	   = "us-east-1"
    }

  }