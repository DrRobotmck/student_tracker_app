CREATE TABLE assignments (
	id             SERIAL PRIMARY KEY,
	comfortability VARCHAR(255),
	completeness   VARCHAR(255),
	student_id     INTEGER REFERENCES students(id),
	created_at     TIMESTAMP,
	updated_at     TIMESTAMP
);
