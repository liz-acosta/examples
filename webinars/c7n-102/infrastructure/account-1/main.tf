provider "aws" {
  profile = "source"
  region = "us-east-1"
}

# Creates sqs queue
resource "aws_sqs_queue" "c7n-102-mailer-queue" {
  name = "c7n-102-mailer-queue"

  tags = {
    "c7n-102" : " "
    "Name" : "c7n-102-mailer-queue"
  }
}

module "demo_infra" {
  source = "../demo-infra"
}
