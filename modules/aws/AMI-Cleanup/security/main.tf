
module "lambda" {
  source = "./lambda"
}

module "monitoring" {
  source = "./monitoring"
}

module "security" {
  source = "./security"
}
