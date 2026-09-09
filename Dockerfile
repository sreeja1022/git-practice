FROM python:3.11-slim

RUN python -m pip install --no-cache-dir --upgrade pip setuptools wheel

WORKDIR /app
COPY app.py .
CMD ["python", "app.py"]
