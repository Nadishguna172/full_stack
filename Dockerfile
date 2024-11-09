FROM python:3.10-alpine3.15
WORKDIR /app
COPY . /app
RUN pip install flask
EXPOSE 5000
CMD ["python3","app.py"]


