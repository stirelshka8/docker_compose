FROM python:3.9

WORKDIR /code

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD gunicorn stocks_products.wsgi -b 0.0.0.0:8000