Strapi + PostgreSQL (Docker Compose Setup)

This project runs Strapi CMS with PostgreSQL using Docker and Docker Compose.

It includes:
	•	Custom Dockerfile for Strapi
	•	docker-compose.yml for orchestration
	•	Persistent database volume
	•	Development-ready bind mounts

⸻

📦 Prerequisites

Make sure you have installed:
	•	Docker
	•	Docker Compose (v2)

Check installation:

docker --version
docker compose version


⸻

📁 Project Structure

project-root/
│
├── docker-compose.yml
├── my-strapi-project/
│   ├── Dockerfile
│   ├── package.json
│   ├── .env
│   ├── config/
│   ├── src/
│   └── public/


⸻

🚀 Running the Project Locally

1️⃣ Clone the Repository

git clone <your-repository-url>
cd <project-folder>


⸻

2️⃣ Build and Start Containers

docker compose up --build

	•	Builds Strapi image using Dockerfile
	•	Pulls PostgreSQL image
	•	Creates internal Docker network
	•	Creates named volume for database
	•	Starts both containers

⸻

3️⃣ Access Strapi

Open your browser:

http://localhost:1337

You can now create the admin account.

⸻

🛑 Stop the Application

To stop containers:

docker compose stop

To stop and remove containers:

docker compose down

To remove everything including database volume (⚠️ deletes data):

docker compose down -v


⸻

🐘 Database Configuration

PostgreSQL runs inside Docker with:
	•	User: strapi
	•	Password: strapiPassword
	•	Database: strapi
	•	Port: 5432

Database data is stored in a Docker named volume:

strapi_data

This ensures persistence even if containers are removed.

⸻

🛠 Rebuilding the Project

If you change dependencies (package.json):

docker compose up --build

If you change only source code:

Docker bind mounts will automatically reflect changes.

⸻

🔍 Useful Commands

Check running containers:

docker ps

View logs:

docker compose logs -f

Access Postgres container:

docker exec -it strapi_postgres sh

Access Strapi container:

docker exec -it strapi_app sh


⸻

🔐 Environment Variables

The application uses .env file inside:

my-strapi-project/.env

Make sure it contains the correct database configuration.

⸻

🏗 Architecture Overview
	•	Strapi container built from custom Dockerfile
	•	PostgreSQL container from official image
	•	Docker internal network for communication
	•	Named volume for database persistence
	•	Bind mounts for development

⸻

✅ Summary

This setup allows you to:
	•	Run Strapi locally in isolated containers
	•	Maintain persistent database storage
	•	Develop with live code updates
	•	Easily rebuild or reset environment

⸻

