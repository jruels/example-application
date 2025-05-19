FROM python:3.10.17-alpine3.21
WORKDIR /py-app
COPY . .
RUN pip3 install flask

# Accept a build argument and set it as an environment variable
ARG APP_VERSION=latest
ENV APP_VERSION=$APP_VERSION

EXPOSE 8080
CMD ["python3", "main.py"]
