# Comentário para modificar o arquivo .py
from pyspark.sql.functions import mean, max, min, col, count
from pyspark.sql import SparkSession

spark = (
    SparkSession.builder.appName("ExerciseSpark")
    .getOrCreate()
)

# Ler os dados do enem 2019
enade = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", ";")
    .load("s3://${aws_s3_bucket.dl.id}/raw-data/")
)


(
    enade
    .write
    .mode("overwrite")
    .format("parquet")
    .save("s3://${aws_s3_bucket.dl.id}/staging-zone/")
)