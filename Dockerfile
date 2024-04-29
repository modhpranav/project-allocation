# Use an official Python runtime as a parent image
FROM python:3.10-slim-buster

RUN mkdir /app

# Set the working directory to /app
WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

EXPOSE 8000

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1