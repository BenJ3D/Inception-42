FROM alpine:latest

EXPOSE 443

RUN apk update && apk add git zsh nginx openssl wget

CMD sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"..
