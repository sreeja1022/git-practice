FROM python:3.11-slim

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --no-cache-dir --upgrade setuptools wheel \
    && rm -rf /usr/local/lib/python3.11/site-packages/pip \
              /usr/local/lib/python3.11/site-packages/pip-*.dist-info \
              /usr/local/bin/pip*

WORKDIR /app

COPY app.py .
COPY server.py .

EXPOSE 8080

CMD ["python", "server.py"]
