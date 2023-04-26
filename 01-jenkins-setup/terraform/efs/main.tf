provider "aws" {
  profile = "jenkins_ha"
  region = "us-east-1"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-09e5e5d35e75df7bc"
  subnet_ids = ["subnet-0755c5b9d5ced7842", "subnet-07ea2dc8a0c7a34d3", "subnet-0d916b3b2a20a0e89"]
}