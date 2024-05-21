locals {
    bucket-name = "${var.layer}-${var.env}-nikki-nareshit"

}
resource "aws_s3_bucket" "demo"{
    bucket = local.bucket-name
    tags = {
        Name = local.bucket-name
        environment = var.env
        }
}