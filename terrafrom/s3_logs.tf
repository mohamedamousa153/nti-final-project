

resource "aws_s3_bucket" "s3_logs" {
  bucket = "elb-logs-mousa-nti"


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}