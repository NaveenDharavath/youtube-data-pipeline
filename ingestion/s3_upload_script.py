import boto3

bucket_name = 'youtube-data-raw'
file_path = 'data/USvideos.csv'
s3_key = 'USvideos.csv'

def upload_file_to_s3():
    s3 = boto3.client('s3')
    try:
        s3.upload_file(file_path, bucket_name, s3_key)
        print(f"✅ Uploaded {file_path} to s3://{bucket_name}/{s3_key}")
    except Exception as e:
        print(f"❌ Error: {e}")

if __name__ == '__main__':
    upload_file_to_s3()
