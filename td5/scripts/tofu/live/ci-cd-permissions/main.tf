provider "aws" {
  region = "us-east-2"
}

module "oidc_provider" {
  source = "github.com/Hadr1en07/devops_base//td5/scripts/tofu/modules/github-aws-oidc"

  provider_url = "https://token.actions.githubusercontent.com" 

}

module "iam_roles" {
  source = "github.com/Hadr1en07/devops_base//td5/scripts/tofu/modules/gh-actions-iam-roles"

  name              = "lambda-sample"                           
  oidc_provider_arn = module.oidc_provider.oidc_provider_arn    

  enable_iam_role_for_testing = true                            

  github_repo      = "Hadr1en07/devops_base" 
  lambda_base_name = "lambda-sample"                            

  enable_iam_role_for_plan  = true                                
  enable_iam_role_for_apply = true                                

  tofu_state_bucket         = "devops-state-bucket" 
  tofu_state_dynamodb_table = "devops-tofu-state" 
}
