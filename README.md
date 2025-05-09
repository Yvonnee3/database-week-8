# database-week-8
# University Database System

This project represents a relational database for managing a university's structure, including multiple campuses, students, departments, schools, courses, majors, and enrollments.

## Features

- Multi-campus structure (main and satellite branches)
- Organized departments and schools
- Students enrolled in different branches and courses
- Tracking student majors and course enrollments
- ERD diagram and normalized SQL schema

---

## Database Entities

1. **Campus** – Main and satellite branches
2. **Department** – Academic departments
3. **School** – Schools under each department
4. **Major** – Specific student majors linked to departments
5. **Course** – Courses offered by departments
6. **Students** – Student details, majors, schools, and campus
7. **Enrollment** – Tracks course registrations per student

---

## ERD Diagram

*See the attached ERD  for a complete entity-relationship diagram.*
![uni drawio (2)](https://github.com/user-attachments/assets/cca85b2e-15de-4ab5-8365-8b383650444d)

---

## Technologies

- SQL (MySQL / PostgreSQL compatible)
- ERD designed using [Draw.io](https://draw.io)
- Compatible with most relational database systems

---

## Getting Started

1. Import the provided `.sql` file to your SQL database.
2. Use `SHOW TABLES;` to verify successful setup.
3. Run queries to interact with student, course, and enrollment data.

---


