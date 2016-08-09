FROM golang:1.6.1-alpine
MAINTAINER b3vis
RUN apk add git --no-cache && \
    git clone https://github.com/ircop/smtp2tg /go/src/smtp2tg && \
    go get gopkg.in/telegram-bot-api.v4 && \
    go get github.com/spf13/viper
WORKDIR /go/bin
RUN go build /go/src/smtp2tg/main.go && \
    mv main smtp2tg
EXPOSE 25
CMD ["/go/bin/smtp2tg","-c","/config/smtp2tg.toml"]
