
terraform {
  backend "s3" {
    bucket = "changepilot-stack-dev"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }

}
