terraform {
  backend "s3" {
    bucket         = "devops-state-bucket-had" 
    key            = "td5/scripts/tofu/live/tofu-state"          
    region         = "us-east-2"                        
    encrypt        = true                                
    dynamodb_table = "devops-dynanotable-had" 
  }
}