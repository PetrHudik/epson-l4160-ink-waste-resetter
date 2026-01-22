FROM python:3.11-slim

RUN apt-get update && apt-get install -y libsnmp-dev gcc && rm -rf /var/lib/apt/lists/*

WORKDIR /code
COPY resetter.py .
COPY requirements.txt .

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "resetter.py"]

