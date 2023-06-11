terraform {
  backend "s3" {
    encrypt                = true
    region                 = "us-east-1"
    dynamodb_table         = "terraform-state-lock-dynamo"
    skip_region_validation = true
    bucket                 = "terraform-state-bucket-mediawiki"
    key			   = "mediawiki.tfstate"
  }
}

