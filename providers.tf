provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "Jaffatubucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
