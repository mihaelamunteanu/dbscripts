CREATE DATABASE `juxtarem` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `main_mail` varchar(50) NOT NULL,
  `points` int(11) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `birthyear` int(11) DEFAULT NULL,
  `maintaskpreferenceid` int(11) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `lasttaskid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lasttaskfk_idx` (`lasttaskid`),
  CONSTRAINT `lasttaskid` FOREIGN KEY (`lasttaskid`) REFERENCES `tasks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(350) NOT NULL,
  `details` varchar(500) DEFAULT NULL,
  `confirmationtext` varchar(50) DEFAULT NULL,
  `denialtext` varchar(50) DEFAULT NULL,
  `firstprerequisites` int(11) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `awardedpoints` int(11) DEFAULT '0',
  `tasktype` varchar(45) DEFAULT NULL,
  `taskcomplexity` varchar(20) DEFAULT 'MEDIUM',
  `minimumtaskduration` int(11) DEFAULT '2',
  `incentivetaskduration` int(11) DEFAULT '0',
  `incentivetaskpoints` int(11) DEFAULT '0',
  `advertisingtask` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `snoozed` tinyint(4) DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `snooze_number` int(11) DEFAULT NULL,
  `snooze_date` datetime DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_hist_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
