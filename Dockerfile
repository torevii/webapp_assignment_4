# Dockerfile
FROM python:3.12.3

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "rest_api_project.wsgi:application", "--bind", "0.0.0.0:8000"]
