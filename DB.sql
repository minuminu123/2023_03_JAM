# DB 생성
DROP DATABASE IF EXISTS `JAM`;
CREATE DATABASE `JAM`;
USE `JAM`;

# article 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

# member 테이블 생성
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(20) NOT NULL,
    loginPw CHAR(200) NOT NULL,
    `name` CHAR(100) NOT NULL
);

ALTER TABLE article ADD COLUMN memberId INT(10) UNSIGNED NOT NULL AFTER updateDate;

ALTER TABLE article ADD COLUMN hit INT(10) UNSIGNED NOT NULL AFTER `body`

# `member` 테스트데이터 생성
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '김철수';

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '홍길동';

# article 테스트데이터 생성
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
title = '제목 1',
`body` = '내용 1',
hit = 5;

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
title = '제목 2',
`body` = '내용 2',
hit = 10;

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
title = '제목 3',
`body` = '내용 3',
hit = 15;

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
title = '제목 4',
`body` = '내용 4',
hit = 20;

SELECT * 
FROM article;

SELECT * 
FROM `member`;

DESC article;

######################################################################


INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = CONCAT('TestId ',RAND()),
loginPw = CONCAT('TestPw ',RAND()),
`name` = CONCAT('TestName ',RAND());

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
title = CONCAT('TestTitle ',RAND()),
`body` = CONCAT('TestBody ',RAND());