SELECT video_id, title, channel_title, MAX(CAST(comment_count AS BIGINT)) AS max_comments
FROM youtube_videos
WHERE comment_count ~ '^[0-9]+$'
GROUP BY video_id, title, channel_title
ORDER BY max_comments DESC
LIMIT 10;
