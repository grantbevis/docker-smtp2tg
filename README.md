# smtp2tg Container

Containerised version of ircop's smtp2tg golang app (https://github.com/ircop/smtp2tg)

smtp2tg is a tiny application to relay messages via SMTP to a Telegram User.

* You will need a Telegram Bot API Key which you can get from talking to [@BotFather](https://telegram.me/BotFather)

* Create your own smtp2tg.toml from my example and update the path in either the run command or my compose example.

---
#### 0.0.3

Dramatically reduced image size

---
#### smtp2tg.toml Example
```
[bot]
token = "YourBotTokenHere"

[receivers]
"*" = "YourChatIDHere"

[smtp]
listen = "0.0.0.0:25"
name = "domain.com"

[logging]
debug = true
```

#### Example Run Command

    $ docker create \
      --name=smtp2tg \
      --restart=always \
      -v /path/to/config:/config:ro \
      -p 2525:25 \
      b3vis/docker-smtp2tg

#### Docker Compose Example
```
version: "2"
services:
  smtp2tg:
    image: b3vis/docker-smtp2tg
    restart: always
    container_name: smtp2tg
    volumes:
      - /path/to/config/smtp2tg.toml:/config/smtp2tg.toml:ro
    ports:
      - "2525:25"
```
---
