FROM alpine:3.17.1

EXPOSE 81
EXPOSE 443
EXPOSE 444

RUN apk update && apk add git zsh nginx openssl wget

CMD sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
