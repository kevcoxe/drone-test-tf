resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = var.tf_backup_infra_state_bucket_name
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }
}