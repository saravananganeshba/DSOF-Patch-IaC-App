resource "aws_cloudtrail" "insecure-logging" {
  name           = "cloudtrail-logging"
  s3_bucket_name = "my-cloudtrail-bucket"
  enable_logging = true
  enable_log_file_validation = true
  is_multi_region_trail = true
  cloud_watch_logs_group_arn = aws_cloudwatch_log_group.cloudtrail-logging.arn
  kms_key_id = var.kms_key_arn
  
}
