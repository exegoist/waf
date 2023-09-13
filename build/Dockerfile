FROM caddy:2.7.4-builder AS builder

RUN xcaddy build --output caddy \
#	--with github.com/porech/caddy-maxmind-geolocation \
#	--with github.com/caddyserver/ntlm-transport \
	--with github.com/corazawaf/coraza-caddy/v2@latest

FROM caddy:2.7.4

COPY --from=builder /usr/bin/caddy  /usr/bin/caddy
RUN mkdir /caddy
CMD ["/usr/bin/caddy", "run", "--config", "/caddy/Caddyfile", "--adapter", "caddyfile", "--watch"]
