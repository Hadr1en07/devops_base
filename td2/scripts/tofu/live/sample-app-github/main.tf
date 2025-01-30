provider "aws" {
  region = "us-east-2"
}

module "sample_app_1" {
  source = "github.com/Hadr1en07/devops_base//td2/scripts/tofu/modules/ec2-instance"

  ami_id = "ami-0ef058ada74734faa"

  name = "sample-app-tofu-1"
}

module "sample_app_2" {
  source = "github.com/Hadr1en07/devops_base//td2/scripts/tofu/modules/ec2-instance"

  ami_id = "ami-0ef058ada74734faa"

  name = "sample-app-tofu-2"
}
