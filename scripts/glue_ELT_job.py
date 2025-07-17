import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

## @params: [JOB_NAME]
args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

raw_df = spark.read.option("header", True).csv("s3://youtube-video-data-naveen/youtube-data-raw/USvideos.csv")
cleaned_df = raw_df.dropDuplicates().na.drop()
cleaned_df.write.mode("overwrite").parquet("s3://youtube-video-data-naveen/youtube-data-processed/")

job.commit()
