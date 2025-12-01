CREATE TABLE users(
  id SERIAL PRIMARY KEY, --SERIAL is postgres autoinc
  email TEXT UNIQUE NOT NULL,--no two users get the same email
  fname TEXT NOT NULL,
  lname TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW() --NOW() gets current timestamp, defaulting to this
);

CREATE TABLE opportunities(
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id) ON DELETE CASCADE,--foreign key to users.id, this will delete corresponding opps when a user is deleted
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
