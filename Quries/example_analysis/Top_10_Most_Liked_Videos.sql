SELECT video_id, title, channel_title, MAX(CAST(likes AS BIGINT)) AS max_likes
FROM youtube_videos
WHERE likes ~ '^[0-9]+$'
GROUP BY video_id, title, channel_title
ORDER BY max_likes DESC 
LIMIT 10;
