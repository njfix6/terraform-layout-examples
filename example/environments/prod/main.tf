terraform {
  backend "s3" {
    bucket = "terraform-state"
    key    = "prod/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = 
  }
}
