/*
-- Query: SELECT * FROM juxtarem.tasks
LIMIT 0, 1000

-- Date: 2018-03-06 19:21
*/
INSERT INTO `tasks` (`id`,`description`,`details`,`confirmationtext`,`denialtext`,`firstprerequisites`,`author`,`created`,`awardedpoints`,`tasktype`,`taskcomplexity`,`minimumtaskduration`,`incentivetaskduration`,`incentivetaskpoints`,`advertisingtask`) VALUES (1,'Think about the wind kissing your skin and messing up your hair. Do this with your eyes close.',NULL,'Done. I can hardly wait to do it for real.','Not now',NULL,'Mihaela Munteanu','2018-03-06 19:11:24',15,NULL,'EASY',25,0,0,0);
INSERT INTO `tasks` (`id`,`description`,`details`,`confirmationtext`,`denialtext`,`firstprerequisites`,`author`,`created`,`awardedpoints`,`tasktype`,`taskcomplexity`,`minimumtaskduration`,`incentivetaskduration`,`incentivetaskpoints`,`advertisingtask`) VALUES (2,'Check your left forearm. Do you have scars? Is your hair thin? Black? Do you have moles?',NULL,'Done.','I don\'t feel like it.',NULL,'Mihaela Munteanu','2018-03-06 19:13:45',15,NULL,'EASY',0,0,0,0);
INSERT INTO `tasks` (`id`,`description`,`details`,`confirmationtext`,`denialtext`,`firstprerequisites`,`author`,`created`,`awardedpoints`,`tasktype`,`taskcomplexity`,`minimumtaskduration`,`incentivetaskduration`,`incentivetaskpoints`,`advertisingtask`) VALUES (3,'Go to the history museum and check the north facade. Under the ceiling there is the date when the building was reconstructed. Feel free to check surroundings. ','The user is expected to fill in the number.','Fill in the number','Snooze',NULL,'Mihaela Munteanu','2018-03-06 19:17:47',40,NULL,'MEDIUM',600,30,50,0);


INSERT INTO `juxtarem`.`tasks` (`description`, `confirmationtext`, `denialtext`, `author`, `awardedpoints`, `taskcomplexity`, `minimumtaskduration`, `advertisingtask`) VALUES ('The weather forecast says this is a fine evening. Go somewhere where you can see the sky. Can you see the stars or there is too much light pollution?', 'Done. ', 'Not now', 'Mihaela Munteanu', '10', 'EASY', '60', '0');

INSERT INTO `tasks` (`id`,`description`,`details`,`confirmationtext`,`denialtext`,`firstprerequisites`,`author`,`created`,`awardedpoints`,`tasktype`,`taskcomplexity`,`minimumtaskduration`,`incentivetaskduration`,`incentivetaskpoints`,`advertisingtask`) VALUES (4,'The weather forecast says this is a fine evening. Go somewhere where you can see the sky. Can you see the stars or there is too much light pollution?',NULL,'Done. ','Not now',NULL,'Mihaela Munteanu','2018-03-06 19:21:02',10,NULL,'EASY',60,0,0,0);
