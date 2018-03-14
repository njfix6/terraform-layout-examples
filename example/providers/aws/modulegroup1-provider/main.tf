variable "profile"  {}
variable "region" {}
variable "credentials" { default = "~/.aws/credentials" }

provider "aws" {
  profile = "${var.aws_profile}"
  region = "${var.aws_region}"
}

# Add modules below
