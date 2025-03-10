# locals {
#   analyzer_name = "main_analyzer"
# }

# resource "aws_accessanalyzer_analyzer_org" "main_analyzer" {
#   analyzer_name = local.analyzer_name
#   type          = "controller"
# }
# resource "aws_accessanalyzer_analyzer_account" "main_analyzer" {
#   analyzer_name = local.analyzer_name
#   type          = data.aws_caller_identity.current.account_id
# }

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-${data.aws_caller_identity.current.account_id}"

  tags = {
    Environment = "Dev"
  }
}