variable "profile" {default = "preprod"}
variable "region" {default = "us-west-2"}

provider "aws" {
  region                  = "${var.region}"
  profile                 = "${var.profile}"
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
