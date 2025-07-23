FROM python:3.10-alpine

# Встановлення залежностей для pip/Flask
RUN apk add --no-cache gcc musl-dev libffi-dev

# Робоча директорія
WORKDIR /app

# Копіюємо файли
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
