SELECT channel_title, COUNT(*) AS trending_count
FROM youtube_videos
GROUP BY channel_title
ORDER BY trending_count DESC
LIMIT 10;
