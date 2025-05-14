provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "4a9099de0add2a893c8a2c3949e9a99e6eb986ab"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-05-14 16:19:12"
    git_last_modified_by = "63072787+vakintosh@users.noreply.github.com"
    git_modifiers        = "63072787+vakintosh"
    git_org              = "vakintosh"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "e36ace73-179d-46b0-81cb-2fb18166e44c"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
