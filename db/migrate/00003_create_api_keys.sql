CREATE TABLE api_keys (
	id             SERIAL PRIMARY KEY,
	key            VARCHAR(255),
	student_id     INTEGER REFERENCES students(id),
	created_at     TIMESTAMP,
	updated_at     TIMESTAMP
);
