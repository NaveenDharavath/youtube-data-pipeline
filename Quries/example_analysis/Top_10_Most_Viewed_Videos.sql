SELECT video_id, title, channel_title, views
FROM youtube_videos
WHERE views ~ '^[0-9]+$'
ORDER BY CAST(views AS BIGINT) DESC
LIMIT 10;
