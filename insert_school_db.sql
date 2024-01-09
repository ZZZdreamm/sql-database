-- INSERT more data into faculties
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

-- INSERT more data into courses
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
COMMIT;

-- INSERT more data into teachers
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
COMMIT;

-- INSERT more data into teachers_courses
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
COMMIT;

-- INSERT more data into students
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
COMMIT;

-- INSERT more data into students_courses
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
COMMIT;

-- INSERT more data into grades
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
COMMIT;

-- INSERT more data into groups
INSERT INTO groups VALUES ('GroupG', 118);
INSERT INTO groups VALUES ('GroupH', 109);
INSERT INTO groups VALUES ('GroupI', 110);
INSERT INTO groups VALUES ('GroupJ', 111);
INSERT INTO groups VALUES ('GroupK', 112);
INSERT INTO groups VALUES ('GroupL', 113);
INSERT INTO groups VALUES ('GroupM', 114);
INSERT INTO groups VALUES ('GroupN', 115);
INSERT INTO groups VALUES ('GroupO', 116);
INSERT INTO groups VALUES ('GroupP', 117);
COMMIT;

-- INSERT more data into groups_students
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
COMMIT;
