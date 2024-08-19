FROM python:3.12

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

RUN echo "hllo compose"

COPY . /app/

EXPOSE 8000

CMD ["fastapi", "dev", "--host", "0.0.0.0", "/app/app/main.py"]
