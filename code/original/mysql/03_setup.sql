-- select the right database
USE schoolmate;

-- teachers
INSERT INTO `users` (`userid`, `username`, `password`, `type`) VALUES (2, 'teacher', md5('teacher'), 'Teacher');
INSERT INTO `teachers` (`teacherid`, `userid`, `fname`, lname) VALUES (1, 2, 'teacher', 'teacher');

-- terms
INSERT INTO `terms` (`termid`, `title`, `startdate`, `enddate`) VALUES (1, 'term', '2016-01-01', '2017-01-01');

-- semesters
INSERT INTO `semesters` (`semesterid`, `termid`, `title`, `startdate`, `midtermdate`, `enddate`)
VALUES (1, 1, 'semester', '2016-01-01', '2016-08-01', '2017-01-01');

-- courses
INSERT INTO `courses` (`courseid`, `semesterid`, `termid`, `coursename`, `teacherid`, `sectionnum`, `roomnum`,
                       `periodnum`, `q1points`, `q2points`, `totalpoints`, `aperc`, `bperc`, `cperc`, `dperc`, `fperc`)
VALUES (1, 1, 1, 'course', 1, 'section', 'room',
           'ppp', 2.3, 4.5, 55.3, 1, 1, 1, 1, 1);

-- students
INSERT INTO `users` (`userid`, `username`, `password`, `type`) VALUES (3, 'student', md5('student'), 'Student');
INSERT INTO `students` (`studentid`, `userid`, `fname`, `mi`, `lname`) VALUES (1, 3, 'name', 's', 'surname');

-- parents
INSERT INTO `users` (`userid`, `username`, `password`, `type`) VALUES (4, 'parent', md5('parent'), 'Parent');
INSERT INTO `parents` (`parentid`, `userid`, `fname`, `lname`) VALUES (1, 4, 'parent', 'parent');
INSERT INTO `parent_student_match` (`matchid`, `parentid`, `studentid`) VALUES (1, 1, 1);