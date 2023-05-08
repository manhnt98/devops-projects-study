provider "aws" {
  profile = "jenkins_ha"
  region = "us-east-1"
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-0755c5b9d5ced7842", "subnet-07ea2dc8a0c7a34d3", "subnet-0d916b3b2a20a0e89"]
  ami_id        = "ami-016ecf8b701f06a05"
  instance_type = "t2.small"
  key_name      = "Jenkins_HA"
  environment   = "dev"
  vpc_id        = "vpc-09e5e5d35e75df7bc"
}