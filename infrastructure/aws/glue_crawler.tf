resource "aws_glue_catalog_database" "enade" {
    name = "db_enade"
}

resource "aws_glue_crawler" "enade" {
  database_name = aws_glue_catalog_database.enade.name
  name          = "enade_s3_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.dl.id}/processing-zone/"
  }
}