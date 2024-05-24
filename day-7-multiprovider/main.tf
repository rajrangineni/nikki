provider "aws" {
    region = "ap-south-1"
    
  
}
provider "aws" {
    region = "us-east-1"
    alias = "dev"
  
}

resource "aws_instance" "dev" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "nikki-keypair"
    tags = {
      Name = "arjun"
      
    }
  
}