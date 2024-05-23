resource "aws_instance" "arjun" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "nikki-keypair"
    tags = {
      Name = "nikki"
    }
  
}

resource "aws_s3_bucket" "nikki" {
    bucket = "qwertyuioplkjhgf"
  
}  

#terraform apply -target=resource_tye.name #ex:terraform apply -target=aws_instance.arjun  --instance only create 