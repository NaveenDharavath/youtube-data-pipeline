CREATE TABLE youtube_videos (
    video_id                VARCHAR(64),
    trending_date           VARCHAR(64),
    title                   VARCHAR(1024),
    channel_title           VARCHAR(256),
    category_id             VARCHAR(16),
    publish_time            VARCHAR(64),
    tags                    VARCHAR(2048),
    views                   VARCHAR(64),
    likes                   VARCHAR(64),      
    dislikes                VARCHAR(64),
    comment_count           VARCHAR(32),
    thumbnail_link          VARCHAR(512),
    comments_disabled       VARCHAR(64),
    ratings_disabled        VARCHAR(128),
    video_error_or_removed  VARCHAR(64),
    description             VARCHAR(65535)
);
