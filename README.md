# smtp2tg Container

Containerised version of ircop's smtp2tg golang app (https://github.com/ircop/smtp2tg)

smtp2tg is a tiny application to relay messages via SMTP to a Telegram User.

You will need a Telegram Bot API Key which you can get from talking to [@BotFather](https://telegram.me/BotFather)

---
#### 0.0.1 (2016-08-09)

This initial version

---

### Example Run Command

    $ docker create \
      --name=smtp2tg \
      --restart=always \
      -v /path/to/config:/config:ro \
      -p 2525:25 \
      b3vis/docker-smtp2tg
---
