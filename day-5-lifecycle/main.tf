provider "aws" {
    region = "ap-south-1"
  
}


resource "aws_instance" "lifecycle" {
    instance_type = var.instance_type
    ami = var.ami_id
    key_name = var.key_name
    availability_zone = "ap-south-1a"
    tags = {
      Name = "nikki"
    }

    #lifecycle {
    #create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
  #}

 #lifecycle {
  # = true    #Terraform will error when it attempts to destroy a resource when this is set to true:
  #}


   lifecycle {
     ignore_changes = [tags,] #This means that Terraform will never update the object but will be able to create or destroy it.
   }

}
