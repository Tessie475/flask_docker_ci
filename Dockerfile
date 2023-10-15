FROM python:3.12.0-alpine3.18

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY app.py .

# Specify the command to run on container start
CMD ["python", "./app.py"]

