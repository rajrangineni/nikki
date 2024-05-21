resource "aws_instance" "import" {
    ami = "ami-013e83f579886baeb"
  instance_type = "t2.micro"
  tags = {
    Name = "dev"
  }

    }
    
    # Command 
#terraform import aws_instance.myvm  <instance id> 

#Note : Here instance id is manually crrated onw 