variable "profile" {default = "preprod"}
variable "region" {default = "us-west-2"}

provider "aws" {
  region                  = "${var.region}"
  profile                 = "${var.profile}"
}

terraform {
  backend "s3" {
    profile = "admin"
    bucket = "terraform-tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-tflock"
    encrypt = true
    key = "preprod/terraform.tfstate"
  }
}

# Add your providers below

module "prod-us-west-2" {
  source = "../../providers/aws/preprod"
  region = "us-west-2"
}

module "prod-us-east-2" {
  source = "../../providers/aws/preprod"
  region = "us-east-2"
  profile = "${var.profile}"
}
