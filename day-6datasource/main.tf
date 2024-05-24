provider "aws"{
  region = "ap-south-1"
} 
    
  


data "aws_vpc" "data" {
    id = "vpc-09fc65f82b9a42e63"
  
}
data "aws_subnet" "selected" {
    vpc_id = "vpc-09fc65f82b9a42e63"
    filter {
      name = "tag:Name"
      values = ["cust-subnet"]
    }
    
    }
    resource "aws_instance" "datasource" {
        ami = "ami-0cc9838aa7ab1dce7"
        key_name = "nikki-keypair"
        instance_type = "t2.micro"
        subnet_id = data.aws_subnet.selected.id
        availability_zone = "ap-south-1a"
        tags = {
            Name = "arjun"
        }
      
    }
    
  
