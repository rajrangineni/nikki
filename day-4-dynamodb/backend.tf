terraform {
  backend "s3" {
    bucket = "state-remote-store-wertgfcvb"
    key    = "folder-2/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "arjun-db-dynamo-dev-"
    encrypt = true
    
    
  }
}