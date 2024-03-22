FROM ubuntu
MAINTAINER verma2701rv@gmail.com
RUN apt-get update -y
WORKDIR /sample
RUN apt-get install -y git
