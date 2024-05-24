data "aws_ami" "amazon_linux_23" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}
data "aws_subnet" "selected" {
    filter {
      name = "tag:Name"
      values = ["cust-subnet"]
    }
}

data "aws_ami" "amazon_linux_23" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}
resource "aws_instance" "datasource" {
        ami = "ami-0cc9838aa7ab1dce7"
        key_name = "nikki-keypair"
        instance_type = "t2.micro"
        availability_zone = "ap-south-1a"
        tags = {
            Name = "arjun"
        }
      
    }
    
  
