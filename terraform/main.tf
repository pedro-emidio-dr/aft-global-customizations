resource "aws_accessanalyzer_analyzer" "main_analyzer" {
  analyzer_name = "analyzer-${data.aws_caller_identity.current.account_id}"
}