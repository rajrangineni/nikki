resource "aws_instance" "name"{
    ami = var.ami_id
    key_name = var.key_name
    instance_type = var.instance_type
    count = 3
    tags = {
        Name = "test- ${count.index}"
    }
}