
terraform {
  backend "s3" {
    bucket = "changepilot-stack-dev"
    key    = "state/terraform.tfstate"
    region = "eu-west-3"
  }

}
