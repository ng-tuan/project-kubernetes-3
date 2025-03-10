#Python image
FROM public.ecr.aws/docker/library/python:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./analytics/. /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5153 available to the world outside this container
EXPOSE 5153

# Run app.py when the container launches
CMD ["python", "app.py"]