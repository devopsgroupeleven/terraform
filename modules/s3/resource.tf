resource "aws_s3_bucket" "module_s3" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
    department = var.department
    tool = var.tool
}
}
