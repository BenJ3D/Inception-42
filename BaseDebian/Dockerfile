FROM debian:buster

RUN apt update && apt install git -y && apt install zsh -y && apt install wget -y

RUN apt update && \
    apt install mariadb-server -y
# CMD exec zsh

# FROM alpine:3.15

# RUN apk update && apk add git zsh wget

RUN sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


# FROM ubuntu:latest

# # RUN apt update && apt install nginx -y
# RUN apt update && apt add mariadb

# EXPOSE 4242