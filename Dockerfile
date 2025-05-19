FROM python:3.10.17-alpine3.21
WORKDIR /py-app
COPY . .
RUN pip3 install flask
EXPOSE 8080
CMD ["python3", "main.py"]
