FROM python:3.12-slim

# set work directory
WORKDIR /app

# copy requirements first (better caching)
COPY app/requirements.txt .

# install dependencies
RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# copy application code
COPY app ./app

# copy tests (IMPORTANT for CI)
COPY tests ./tests

# expose port
EXPOSE 8000

# run app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

