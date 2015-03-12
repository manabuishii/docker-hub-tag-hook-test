FROM ubuntu:trusty
RUN apt-get update && apt-get install wget  && apt-get clean
