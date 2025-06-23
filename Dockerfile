# Use the official Python image as the base
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy requirements file if present, else skip
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install --upgrade pip && \
    if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

# Copy the rest of the application code
COPY . /app

# Expose the port Flask runs on
EXPOSE 5000

# Set default command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]