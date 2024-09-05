# Use an official Python runtime as a parent image
FROM python:3.12.0-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./analytics/. /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5153 available to the world outside this container
EXPOSE 5153

# Environment variables
ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

# Run app.py when the container launches
CMD ["python", "app.py"]