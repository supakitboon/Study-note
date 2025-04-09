resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "static_site" {
  bucket = "tf-static-site-${random_id.bucket_suffix.hex}"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }

  tags = { Name = "tf-s3-static" }
}
