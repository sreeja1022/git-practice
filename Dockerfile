FROM python:3.11-slim

RUN python -m pip install --no-cache-dir --upgrade setuptools wheel \
    && rm -rf /usr/local/lib/python3.11/site-packages/pip \
              /usr/local/lib/python3.11/site-packages/pip-*.dist-info \
              /usr/local/bin/pip*

WORKDIR /app
COPY app.py .
CMD ["python", "app.py"]
