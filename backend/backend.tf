terraform {
  backend "s3" {
    bucket = "terraform-bucket-to-store-state"
    key = "terraform.tfstate"
    region = "ap-south-1"

}
}
