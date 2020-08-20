provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "git-repo" {
  source = "git::https://github.com/Dgruploads/terraform-repo.git"
}
