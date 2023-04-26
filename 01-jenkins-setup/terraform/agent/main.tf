provider "aws" {
  profile = "jenkins_ha"
  region = "us-east-1"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-0e68ab34763bcba1f"
  instance_type      = "t2.small"
  key_name           = "techiescamp"
  subnet_ids         = ["subnet-0755c5b9d5ced7842", "subnet-07ea2dc8a0c7a34d3", "subnet-0d916b3b2a20a0e89"]
  instance_count     = 1
}
