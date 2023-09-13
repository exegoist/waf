# BASIC WAF + REVERSE PROXY CONFIG

1. clone repository and pop to directory
```bash
git clone https://github.com/exegoist/waf.git && cd waf
```

2. get fresh config file for coraza owasp
```bash
curl https://raw.githubusercontent.com/corazawaf/coraza/main/coraza.conf-recommended -o ruleset/coraza.conf
```
and dont forget to change `SecRuleEngine On`

3. get fresh coreruleset
```bash
git clone https://github.com/coreruleset/coreruleset ruleset/coreruleset
```

4. copy/rename folder `my.example.org` with your's site `fqdn`

5. edit `caddy/Caddyfile`

6. if geofilter is required, get the fresh maxmind geodb (update `geoupdate.sh` with your's license id for maxmind though)
```bash
./geoupdate.sh
```
also uncomment line with maxmind plugin in `build/Dockerfile`

7. build caddy docker image
```bash
docker compose build --no-cache
```

8. run caddy server
```bash
docker compose up -d --force-recreate
```
