FROM caddy:2.6.2-builder AS builder

RUN xcaddy build \
	--with github.com/caddyserver/ntlm-transport \
	--with github.com/corazawaf/coraza-caddy

FROM caddy:2.6.2

COPY --from=builder /usr/bin/caddy  /usr/bin/caddy
RUN mkdir /caddy
WORKDIR /srv
CMD ["/usr/bin/caddy", "run", "--config", "/caddy/Caddyfile", "--adapter", "caddyfile", "--watch"]
