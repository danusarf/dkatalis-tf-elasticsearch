terraform {
  backend "s3" {
    bucket = "dkatalis-dhimas-poc-statefile"
    key    = "elasticsearch/terraform.tfstate"
    region = "us-east-1"
  }
}
