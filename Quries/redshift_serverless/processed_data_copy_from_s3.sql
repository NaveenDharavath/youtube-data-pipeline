COPY youtube_videos
FROM 's3://youtube-video-data-naveen/youtube-data-processed/'
IAM_ROLE 'arn:aws:iam::211125541863:role/service-role/AmazonRedshift-CommandsAccessRole-20250715T230044'
FORMAT AS PARQUET;
