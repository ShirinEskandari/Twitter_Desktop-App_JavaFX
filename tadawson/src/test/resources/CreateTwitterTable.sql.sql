USE TWITTERDB;

DROP TABLE IF EXISTS TWEETS;
DROP TABLE IF EXISTS TWITTER;

CREATE TABLE TWITTER (
  TWITTERID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  SCREENNAME varchar(30) NOT NULL DEFAULT '',
  FULL_NAME varchar(30) NOT NULL DEFAULT '',
 PROFILE_IMAGE_URL varchar(255) NOT NULL DEFAULT '',
  CREATED_AT datetime DEFAULT CURRENT_TIMESTAMP,
FOLLOWERS_COUNT INT(1) NOT NULL DEFAULT 0,
IDUSE  bigint(40) unsigned ,
RETWEET_COUNT INT (11)
);

CREATE TABLE TWEETS (
  TWEET_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  TWITTERID int,
  DATEOFTWEET datetime DEFAULT CURRENT_TIMESTAMP,
  TWEETEXT varchar(250) NOT NULL DEFAULT '',
  FAVORITECOUNT INT(11) NOT NULL DEFAULT 0,
  IS_FAVORITED INT(1) NOT NULL DEFAULT 0,
  RETWEETED_BY_ME INT(1)NOT NULL DEFAULT 0,
  KEY TWITTERID (TWITTERID),
  CONSTRAINT twitter_1 FOREIGN KEY (TWITTERID) REFERENCES TWITTER (TWITTERID)
);
