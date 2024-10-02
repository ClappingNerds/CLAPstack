-- Create the Airflow database
;

-- Create the Airflow user with a password
CREATE USER airflow WITH PASSWORD 'airflow_pass';

CREATE DATABASE airflow_db WITH OWNER airflow;

-- Grant privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE airflow_db TO airflow;
