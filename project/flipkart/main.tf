module "vpc" {
  source = "/home/ubuntu/terraform/modules/vpc"
  cidr_block = "13.13.0.0/16"
  Name = "flupkart-vpc"
  department = "devops"
  tool = "terraform"
}

module "s3" {
  source = "/home/ubuntu/terraform/modules/s3"
  bucket_name = "flipkart-bucket-to-upload-data"
  Name = "flipkart-bucket"
  department = "devops"
  tool = "terraform"
}
