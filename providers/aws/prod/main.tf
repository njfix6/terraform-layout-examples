variable "profile"  {}
variable "region" {}

provider "aws" {
  profile = "${var.aws_profile}"
  region = "${var.aws_region}"
}

# Add modules below

module "AMI-cleanup" {
  source = "../../../modules/aws/AMI-Cleanup"
}
