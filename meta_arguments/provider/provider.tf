# Default proivider configuration
provider "aws" {
  region  = var.ec2_region
}

# Alternate provider configuration
provider "aws" {
  alias  = "Oregon"
  region = "us-west-2"
}
