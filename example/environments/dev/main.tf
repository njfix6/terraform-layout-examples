variable "profile" {default = "spinn-ctotools"}
variable "region" {default = "us-west-2"}

provider "aws" {
  version                 = "1.5.0"
  region                  = "${var.region}"
  profile                 = "${var.profile}"
}

terraform {
  backend "s3" {
    profile = "spinn-admin"
    bucket = "sbg-spinnaker-admin-tfstate"
    region = "us-west-2"
    dynamodb_table = "spinnaker-admin-tflock"
    encrypt = true
    key = "ctotools/terraform.tfstate"
  }
}
