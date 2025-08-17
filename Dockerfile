# Use official Python image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt ./

# Install dependencies
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Expose port for Flask/FastAPI (default 5000 for Flask, 8000 for FastAPI)
EXPOSE 5000
EXPOSE 8000

# Default command (can be changed for FastAPI)
CMD ["python", "main.py"]
