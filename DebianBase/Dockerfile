FROM debian:buster-slim

RUN apt update && apt install git -y && apt install zsh -y && apt install wget -y

# CMD exec zsh

# FROM alpine:3.15

# RUN apk update && apk add git zsh wget

CMD sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# FROM ubuntu:latest

# # RUN apt update && apt install nginx -y
# RUN apt update && apt add mariadb

# EXPOSE 4242