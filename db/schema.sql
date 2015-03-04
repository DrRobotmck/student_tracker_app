DROP TABLE IF EXISTS assignments          CASCADE;
DROP TABLE IF EXISTS students             CASCADE;

CREATE TABLE students (
	id            SERIAL PRIMARY KEY,
	name          VARCHAR(255),
	github_handle VARCHAR(255),
	is_instructor BOOLEAN
);

CREATE TABLE assignments (
	id             SERIAL PRIMARY KEY,
	comfortability VARCHAR(255),
	completeness   VARCHAR(255),
	student_id     INTEGER REFERENCES students(id),
	created_at     TIMESTAMP,
	updated_at     TIMESTAMP
);
