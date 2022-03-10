provider "aws" {
  profile = "source"
  region = "us-east-1"
}

module "demo_infra" {
  source = "../demo-infra"
}
