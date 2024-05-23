variable "ami_id"{
    type = string
    default = "ami-0cc9838aa7ab1dce7"
}
variable "instance_type"{
    type = string
    default = "t2.micro"
}

variable "key_name" {
    type = string
    default = "nikki-keypair"
}

variable "sandboxes"{
    type = list(string)
    default = ["dev","arjun"]
}

resource "aws_instance" "sandbox" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    for_each = toset(var.sandboxes)
    tags = {
      Name = each.value
    }
  
}
