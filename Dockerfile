# Use official Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Set PYTHONPATH so Python sees the app module
ENV PYTHONPATH=/app

# Copy only requirements first for caching
COPY app/requirements.txt .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ ./app

# Copy tests
COPY tests/ ./tests

# Expose port for FastAPI
EXPOSE 8000

# Run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

