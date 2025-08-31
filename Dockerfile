# Base image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy Python file and requirements
COPY . .

# Install dependencies (if any)
RUN pip install --no-cache-dir -r requirements.txt

# Default command to run Python file
CMD ["python", "app.py"]
