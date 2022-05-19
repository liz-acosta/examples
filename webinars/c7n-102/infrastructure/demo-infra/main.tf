# Creates lambda role for event-based policies
resource "aws_iam_role" "c7n-102-execution-role" {
  name               = "c7n-102-execution-role"
  assume_role_policy = file("c7n-102-trust-policy.json")

  inline_policy {
    name   = "c7n-102-policy"
    policy = file("c7n-102-policy.json")
  }

  tags = {
    "c7n-102" : " "
  }
}

# Creates open security group
resource "aws_security_group" "c7n-102-security-group-001" {

  name = "c7n-102-group-001"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "c7n-102" : " "
    "Name" : "c7n-102-security-group"
  }
}

resource "aws_security_group" "c7n-102-security-group-002" {

  name = "c7n-102-group-002"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "c7n-102" : " "
    "Name" : "c7n-102-security-group"
  }
}

resource "aws_security_group" "c7n-102-security-group-003" {

  name = "c7n-102-group-003"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "c7n-102" : " "
    "Name" : "c7n-102-security-group"
  }
}