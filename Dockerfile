FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENV PORT=8080

CMD ["sh", "-c", "python -m google.adk.cli web agents --host 0.0.0.0 --port $PORT"]