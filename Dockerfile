FROM ubuntu:latest
MAINTAINER Ivan Snezhok 'ivan.snezhok@gmail.com'
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
RUN pip3 install flask
COPY .. /app
WORKDIR /app
CMD ["python3", "hello.py"]