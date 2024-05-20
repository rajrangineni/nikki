terraform {
  backend "s3" {
    bucket = "state-remote-storeasdfghjk"
    key    = "folder-2/terraform.tfstate"
    region = "ap-south-1"
  }
}