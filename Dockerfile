# Use official lightweight Python image
FROM python:3.11-slim

# Set environment variables for Python (prevents .pyc files, disables buffering for logs)
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy source code into the container
COPY . /app

# Upgrade pip, install dependencies, and install the CLI tool
RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && pip install .

# Healthcheck (optional, for orchestrators)
# HEALTHCHECK CMD apmcheck --help || exit 1

# Set the default entrypoint to the CLI tool
ENTRYPOINT ["apmcheck"]
