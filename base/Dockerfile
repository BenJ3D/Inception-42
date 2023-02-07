FROM alpine:3.17.1

RUN apk add git zsh \
&& sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

CMD exec zsh