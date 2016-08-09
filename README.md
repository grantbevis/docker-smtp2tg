# smtp2tg Container

Containerised version of ircop's smtp2tg golang app (https://github.com/ircop/smtp2tg)

---
### 0.0.1 (2016-07-04)

This initial version

---

## Example Run Command

    $ docker create \
      --name=smtp2tg \
      --restart=always \
      -v /path/to/smtp2tg.toml:/config/smtp2tg.toml:ro \
      -p 2525:25 \
      b3vis/smtp2tg



---
