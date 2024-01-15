-- INSERT data into faculties
INSERT INTO faculties VALUES (109, 'Wydzia? In?ynierii Materia?owej');
INSERT INTO faculties VALUES (110, 'Wydzia? Psychologii');
INSERT INTO faculties VALUES (111, 'Wydzia? Geologii');
INSERT INTO faculties VALUES (112, 'Wydzia? Filozofii');
INSERT INTO faculties VALUES (113, 'Wydzia? In?ynierii Elektrycznej');
INSERT INTO faculties VALUES (114, 'Wydzia? Historii');
INSERT INTO faculties VALUES (115, 'Wydzia? Biotechnologii');
INSERT INTO faculties VALUES (116, 'Wydzia? Zarz?dzania');
INSERT INTO faculties VALUES (117, 'Wydzia? Turystyki');
INSERT INTO faculties VALUES (118, 'Wydzia? Sztuk Pi?knych');
COMMIT;

-- INSERT data into courses
INSERT INTO courses VALUES (109, 'In?ynieria Materia?owa');
INSERT INTO courses VALUES (110, 'Psychologia Kliniczna');
INSERT INTO courses VALUES (111, 'Geologia Z?o?owa');
INSERT INTO courses VALUES (112, 'Historia Filozofii');
INSERT INTO courses VALUES (113, 'Podstawy Elektrotechniki');
INSERT INTO courses VALUES (114, 'Historia Polski');
INSERT INTO courses VALUES (115, 'Biotechnologia Medyczna');
INSERT INTO courses VALUES (116, 'Zarz?dzanie Procesami Biznesowymi');
INSERT INTO courses VALUES (117, 'Turystyka Kulturowa');
INSERT INTO courses VALUES (118, 'Malarstwo');
INSERT INTO courses VALUES (119, 'Informatyka');
COMMIT;

-- INSERT data into teachers
INSERT INTO teachers VALUES (1009, 'Martyna', 'Krawczyk', TO_DATE('1984-06-25', 'YYYY-MM-DD'), 109);
INSERT INTO teachers VALUES (1010, 'Tomasz', 'Wójcik', TO_DATE('1978-09-12', 'YYYY-MM-DD'), 110);
INSERT INTO teachers VALUES (1011, 'Katarzyna', 'D?browska', TO_DATE('1985-03-08', 'YYYY-MM-DD'), 111);
INSERT INTO teachers VALUES (1012, 'Micha?', 'Nowak', TO_DATE('1970-12-01', 'YYYY-MM-DD'), 112);
INSERT INTO teachers VALUES (1013, 'Janina', 'Kowalczyk', TO_DATE('1982-07-18', 'YYYY-MM-DD'), 113);
INSERT INTO teachers VALUES (1014, 'Adam', 'Witkowski', TO_DATE('1975-11-30', 'YYYY-MM-DD'), 114);
INSERT INTO teachers VALUES (1015, 'Magdalena', 'Zieli?ska', TO_DATE('1979-04-14', 'YYYY-MM-DD'), 115);
INSERT INTO teachers VALUES (1016, 'Szymon', 'Lewandowski', TO_DATE('1988-08-18', 'YYYY-MM-DD'), 116);
INSERT INTO teachers VALUES (1017, 'Monika', 'Szczepa?ska', TO_DATE('1980-03-12', 'YYYY-MM-DD'), 117);
INSERT INTO teachers VALUES (1018, 'Karol', 'Wojciechowski', TO_DATE('1983-06-15', 'YYYY-MM-DD'), 118);
INSERT INTO teachers VALUES (1019, 'Tomasz', 'Krukowski', TO_DATE('1983-06-15', 'YYYY-MM-DD'), 118);
COMMIT;

-- INSERT data into teachers_courses
INSERT INTO teachers_courses VALUES (1009, 109, 1009);
INSERT INTO teachers_courses VALUES (1010, 110, 1010);
INSERT INTO teachers_courses VALUES (1011, 111, 1011);
INSERT INTO teachers_courses VALUES (1012, 112, 1012);
INSERT INTO teachers_courses VALUES (1013, 113, 1013);
INSERT INTO teachers_courses VALUES (1014, 114, 1014);
INSERT INTO teachers_courses VALUES (1015, 115, 1015);
INSERT INTO teachers_courses VALUES (1016, 116, 1016);
INSERT INTO teachers_courses VALUES (1017, 117, 1017);
INSERT INTO teachers_courses VALUES (1018, 118, 1018);
INSERT INTO teachers_courses VALUES (1019, 109, 1009);
INSERT INTO teachers_courses VALUES (1020, 110, 1009);
INSERT INTO teachers_courses VALUES (1021, 111, 1010);
INSERT INTO teachers_courses VALUES (1022, 112, 1010);
INSERT INTO teachers_courses VALUES (1023, 113, 1011);
INSERT INTO teachers_courses VALUES (1024, 114, 1011);
INSERT INTO teachers_courses VALUES (1025, 115, 1012);
INSERT INTO teachers_courses VALUES (1026, 116, 1012);
INSERT INTO teachers_courses VALUES (1037, 117, 1018);
INSERT INTO teachers_courses VALUES (1038, 118, 1018);
INSERT INTO teachers_courses VALUES (1035, 111, 1017);
INSERT INTO teachers_courses VALUES (1036, 112, 1017);
INSERT INTO teachers_courses VALUES (1033, 113, 1016);
INSERT INTO teachers_courses VALUES (1034, 114, 1016);
INSERT INTO teachers_courses VALUES (1028, 118, 1013);
INSERT INTO teachers_courses VALUES (1031, 109, 1015);
INSERT INTO teachers_courses VALUES (1032, 110, 1015);
INSERT INTO teachers_courses VALUES (1029, 111, 1014);
INSERT INTO teachers_courses VALUES (1030, 112, 1014);
INSERT INTO teachers_courses VALUES (1039, 115, 1018);
INSERT INTO teachers_courses VALUES (1040, 116, 1018);

COMMIT;



-- INSERT data into students
INSERT INTO students VALUES (2006, 'Rafa?', 'Szyma?ski', TO_DATE('2000-09-15', 'YYYY-MM-DD'), 4, 109);
INSERT INTO students VALUES (2007, 'Anna', 'Zaj?c', TO_DATE('2001-12-10', 'YYYY-MM-DD'), 2, 110);
INSERT INTO students VALUES (2008, 'Krzysztof', 'Lisowski', TO_DATE('2002-07-25', 'YYYY-MM-DD'), 3, 111);
INSERT INTO students VALUES (2009, 'Magdalena', 'Jaworska', TO_DATE('2003-01-05', 'YYYY-MM-DD'), 1, 112);
INSERT INTO students VALUES (2010, 'Wojciech', 'Kowalski', TO_DATE('2000-11-20', 'YYYY-MM-DD'), 4, 113);
INSERT INTO students VALUES (2011, 'Patrycja', 'Nowak', TO_DATE('2002-03-15', 'YYYY-MM-DD'), 2, 114);
INSERT INTO students VALUES (2012, 'Szymon', 'Kaczor', TO_DATE('2001-08-20', 'YYYY-MM-DD'), 3, 115);
INSERT INTO students VALUES (2013, 'Natalia', 'Sikora', TO_DATE('2003-04-14', 'YYYY-MM-DD'), 1, 116);
INSERT INTO students VALUES (2014, 'Bartosz', 'Lewandowski', TO_DATE('2000-06-30', 'YYYY-MM-DD'), 4, 117);
INSERT INTO students VALUES (2015, 'Zofia', 'Witkowska', TO_DATE('2001-09-25', 'YYYY-MM-DD'), 2, 118);
INSERT INTO students VALUES (2017, 'Radek', 'Kruk', TO_DATE('2001-09-25', 'YYYY-MM-DD'), 2, 118);
COMMIT;

-- INSERT data into students_courses
INSERT INTO students_courses VALUES (1, 109, 2006);
INSERT INTO students_courses VALUES (2, 110, 2007);
INSERT INTO students_courses VALUES (3, 111, 2008);
INSERT INTO students_courses VALUES (4, 112, 2009);
INSERT INTO students_courses VALUES (5, 113, 2010);
INSERT INTO students_courses VALUES (6, 114, 2011);
INSERT INTO students_courses VALUES (7, 115, 2012);
INSERT INTO students_courses VALUES (8, 116, 2013);
INSERT INTO students_courses VALUES (9, 117, 2014);
INSERT INTO students_courses VALUES (10, 118, 2015);
INSERT INTO students_courses VALUES (11, 109, 2015);
INSERT INTO students_courses VALUES (12, 110, 2014);
INSERT INTO students_courses VALUES (13, 111, 2013);
INSERT INTO students_courses VALUES (14, 112, 2012);
INSERT INTO students_courses VALUES (15, 113, 2011);
INSERT INTO students_courses VALUES (16, 114, 2010);
INSERT INTO students_courses VALUES (17, 115, 2009);
INSERT INTO students_courses VALUES (18, 116, 2008);
INSERT INTO students_courses VALUES (19, 117, 2007);
INSERT INTO students_courses VALUES (20, 118, 2006);
INSERT INTO students_courses VALUES (21, 109, 2009);
INSERT INTO students_courses VALUES (22, 110, 2007);
INSERT INTO students_courses VALUES (23, 111, 2008);
INSERT INTO students_courses VALUES (24, 112, 2009);
INSERT INTO students_courses VALUES (25, 113, 2010);
INSERT INTO students_courses VALUES (26, 114, 2011);
INSERT INTO students_courses VALUES (27, 115, 2012);
INSERT INTO students_courses VALUES (28, 116, 2013);
INSERT INTO students_courses VALUES (29, 117, 2014);
INSERT INTO students_courses VALUES (30, 118, 2015);

COMMIT;

-- INSERT data into grades
INSERT INTO grades VALUES (7, 92, 109, 2006);
INSERT INTO grades VALUES (8, 78, 110, 2007);
INSERT INTO grades VALUES (9, 85, 111, 2008);
INSERT INTO grades VALUES (10, 95, 112, 2009);
INSERT INTO grades VALUES (11, 88, 113, 2010);
INSERT INTO grades VALUES (12, 91, 114, 2011);
INSERT INTO grades VALUES (13, 76, 115, 2012);
INSERT INTO grades VALUES (14, 83, 116, 2013);
INSERT INTO grades VALUES (15, 89, 117, 2014);
INSERT INTO grades VALUES (16, 94, 118, 2015);
INSERT INTO grades VALUES (17, 0, 109, 2007);
INSERT INTO grades VALUES (18, 15, 110, 2006);
INSERT INTO grades VALUES (19, 27, 111, 2006);
INSERT INTO grades VALUES (20, 12, 112, 2006);
INSERT INTO grades VALUES (21, 88, 113, 2006);
INSERT INTO grades VALUES (22, 91, 114, 2006);
INSERT INTO grades VALUES (23, 23, 115, 2006);
INSERT INTO grades VALUES (24, 83, 116, 2006);
INSERT INTO grades VALUES (25, 89, 117, 2006);
INSERT INTO grades VALUES (26, 94, 118, 2006);
INSERT INTO grades VALUES (27, 0, 109, 2008);
INSERT INTO grades VALUES (28, 15, 110, 2008);
INSERT INTO grades VALUES (29, 27, 111, 2009);
INSERT INTO grades VALUES (30, 12, 112, 2009);
INSERT INTO grades VALUES (31, 88, 113, 2009);
INSERT INTO grades VALUES (32, 91, 113, 2010);
INSERT INTO grades VALUES (33, 23, 113, 2011);
INSERT INTO grades VALUES (34, 83, 117, 2011);
INSERT INTO grades VALUES (35, 89, 117, 2012);
INSERT INTO grades VALUES (36, 94, 117, 2013);
INSERT INTO grades VALUES (37, 98, 109, 2010);
INSERT INTO grades VALUES (38, 75, 110, 2011);
INSERT INTO grades VALUES (39, 89, 111, 2012);
INSERT INTO grades VALUES (40, 77, 112, 2013);
INSERT INTO grades VALUES (41, 93, 113, 2014);
INSERT INTO grades VALUES (42, 82, 114, 2015);
INSERT INTO grades VALUES (43, 69, 115, 2010);
INSERT INTO grades VALUES (44, 91, 116, 2011);
INSERT INTO grades VALUES (45, 80, 117, 2012);
INSERT INTO grades VALUES (46, 72, 118, 2013);
INSERT INTO grades VALUES (47, 42, 109, 2009);
INSERT INTO grades VALUES (48, 65, 110, 2010);
INSERT INTO grades VALUES (49, 78, 111, 2011);
INSERT INTO grades VALUES (50, 61, 112, 2012);
INSERT INTO grades VALUES (51, 95, 113, 2013);
INSERT INTO grades VALUES (52, 87, 114, 2014);
INSERT INTO grades VALUES (53, 54, 115, 2015);
INSERT INTO grades VALUES (54, 76, 116, 2010);
INSERT INTO grades VALUES (55, 88, 117, 2011);
INSERT INTO grades VALUES (56, 94, 118, 2012);
INSERT INTO grades VALUES (57, 32, 109, 2007);
INSERT INTO grades VALUES (58, 59, 110, 2008);
INSERT INTO grades VALUES (59, 71, 111, 2009);
INSERT INTO grades VALUES (60, 56, 112, 2010);
INSERT INTO grades VALUES (61, 82, 113, 2010);
INSERT INTO grades VALUES (62, 87, 114, 2010);
INSERT INTO grades VALUES (63, 33, 115, 2010);
INSERT INTO grades VALUES (64, 74, 116, 2010);
INSERT INTO grades VALUES (65, 79, 117, 2010);
INSERT INTO grades VALUES (66, 84, 118, 2010);
INSERT INTO grades VALUES (67, 3, 109, 2011);
INSERT INTO grades VALUES (68, 18, 110, 2011);
INSERT INTO grades VALUES (69, 30, 111, 2012);
INSERT INTO grades VALUES (70, 15, 112, 2012);
INSERT INTO grades VALUES (71, 91, 113, 2012);
INSERT INTO grades VALUES (72, 94, 113, 2013);
INSERT INTO grades VALUES (73, 46, 113, 2014);
INSERT INTO grades VALUES (74, 86, 117, 2014);
INSERT INTO grades VALUES (75, 92, 117, 2015);

COMMIT;



-- INSERT data into groups
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupG', 118);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupH', 109);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupI', 110);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupJ', 111);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupK', 112);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupL', 113);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupM', 114);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupN', 115);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupO', 116);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupP', 117);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupQ', 116);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupR', 113);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupS', 110);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupT', 117);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupU', 115);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupV', 109);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupW', 112);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupX', 114);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupY', 111);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupZ', 118);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupAA', 109);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupBB', 113);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupCC', 117);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupDD', 110);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupEE', 118);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupFF', 115);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupGG', 112);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupHH', 111);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupII', 118);
INSERT INTO groups (group_id, courses_course_id) VALUES ('GroupJJ', 114);

COMMIT;


-- INSERT data into groups_students
INSERT INTO groups_students VALUES (1, 'GroupG', 2012);
INSERT INTO groups_students VALUES (2, 'GroupH', 2013);
INSERT INTO groups_students VALUES (3, 'GroupI', 2014);
INSERT INTO groups_students VALUES (4,'GroupJ', 2015);
INSERT INTO groups_students VALUES (5, 'GroupK', 2006);
INSERT INTO groups_students VALUES (6, 'GroupL', 2007);
INSERT INTO groups_students VALUES (7, 'GroupM', 2008);
INSERT INTO groups_students VALUES (8, 'GroupN', 2009);
INSERT INTO groups_students VALUES (9, 'GroupO', 2010);
INSERT INTO groups_students VALUES (10, 'GroupP', 2011);
INSERT INTO groups_students VALUES (11, 'GroupQ', 2015);
INSERT INTO groups_students VALUES (12, 'GroupR', 2012);
INSERT INTO groups_students VALUES (13, 'GroupS', 2007);
INSERT INTO groups_students VALUES (14, 'GroupT', 2010);
INSERT INTO groups_students VALUES (15, 'GroupU', 2006);
INSERT INTO groups_students VALUES (16, 'GroupV', 2014);
INSERT INTO groups_students VALUES (17, 'GroupW', 2011);
INSERT INTO groups_students VALUES (18, 'GroupX', 2009);
INSERT INTO groups_students VALUES (19, 'GroupY', 2013);
INSERT INTO groups_students VALUES (20, 'GroupZ', 2008);
INSERT INTO groups_students VALUES (21, 'GroupAA', 2012);
INSERT INTO groups_students VALUES (22, 'GroupBB', 2006);
INSERT INTO groups_students VALUES (23, 'GroupCC', 2014);
INSERT INTO groups_students VALUES (24, 'GroupDD', 2013);
INSERT INTO groups_students VALUES (25, 'GroupEE', 2010);
INSERT INTO groups_students VALUES (26, 'GroupFF', 2007);
INSERT INTO groups_students VALUES (27, 'GroupGG', 2009);
INSERT INTO groups_students VALUES (28, 'GroupHH', 2011);
INSERT INTO groups_students VALUES (29, 'GroupII', 2015);
INSERT INTO groups_students VALUES (30, 'GroupJJ', 2008);
INSERT INTO groups_students VALUES (31, 'GroupU', 2007);

COMMIT;
