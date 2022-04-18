CREATE TABLE student (
    id SERIAL,
    name VARCHAR(128),
    email VARCHAR(128) UNIQUE, 
    PRIMARY KEY(id)
);
CREATE TABLE course (
    id SERIAL,
    title VARCHAR(128) UNIQUE, 
    PRIMARY KEY(id)
);
CREATE TABLE member (
    student_id INTEGER REFERENCES student(id) ON DELETE CASCADE, 
    course_id INTEGER REFERENCES course(id) ON DELETE CASCADE, 
    role INTEGER
    PRIMARY KEY (student_id, course_id)
)

SELECT student.name, member.role, course.title
FROM student
JOIN member ON member.student_id = student.id
JOIN course ON member.course_id = course.id
ORDER BY course.title, member.role DESC, student.name;