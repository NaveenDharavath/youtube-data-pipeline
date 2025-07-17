SELECT video_id, title, channel_title, MAX(CAST(dislikes AS BIGINT)) AS max_dislikes
FROM youtube_videos
WHERE dislikes ~ '^[0-9]+$'
GROUP BY video_id, title, channel_title
ORDER BY max_dislikes DESC
LIMIT 10;
