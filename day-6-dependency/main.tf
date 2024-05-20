resource "aws_instance" "dependency" {
    ami = "ami-013e83f579886baeb"
  instance_type = "t2.micro"
  key_name =  "nikki-keypair"
  tags = {
    Name = "vasu"
  }
}

resource "aws_s3_bucket" "dependency" {
    bucket = "s3-dependency-trail1234"
    depends_on = [ aws_instance.dependency ]
  
}