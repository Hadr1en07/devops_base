provider "aws" {
  region = "us-east-2"
}

module "state" {
  source = "github.com/Hadr1en07/devops_base//td5/scripts/tofu/modules/state-bucket"

  # TODO: fill in your own bucket name!
  name = "devops-state-bucket"
}