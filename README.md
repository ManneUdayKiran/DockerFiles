
# 🐳 Flask App in Docker

This project demonstrates how to containerize a simple Flask application using Docker.

## 🧾 Project Structure

```

flask-app/
├── app.py
├── requirements.txt
└── Dockerfile

````

## 🚀 Getting Started

### 1. Prerequisites

- Docker installed and running on your system
- (Optional) Python installed for local testing

### 2. Clone the Repository

```bash
git clone <your-repo-url>
````

### 3. Build the Docker Image

```bash
docker build -t flask-docker-app .
```

### 4. Run the Container

```bash
docker run -p 5000:5000 flask-docker-app
```

Then open your browser and go to:
[http://localhost:5000](http://localhost:5000)

You should see:

```
Hello from Flask in Docker!
```

---

## 🛠 Files Explained

* `app.py` – Basic Flask app
* `requirements.txt` – Python dependencies
* `Dockerfile` – Instructions to build the Docker image

---

## 🧹 Clean Up

To stop the container:

```bash
CTRL + C
```

To remove all containers and images (optional):

```bash
docker ps -a
docker rm <container-id>
docker rmi flask-docker-app
```

---

## 📦 Sample Output

```
 * Running on http://0.0.0.0:5000
```

---

## 📝 License

This project is open-source and free to use.


