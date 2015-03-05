CREATE TABLE students (
	id            SERIAL PRIMARY KEY,
	name          VARCHAR(255),
	github_handle VARCHAR(255),
	is_instructor BOOLEAN
);
