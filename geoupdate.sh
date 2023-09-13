#!/bin/bash

cd /tmp/
curl "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country&license_key={YOUR_LICENSE_KEY}&suffix=tar.gz" -o GeoLite2-Country.tar.gz
tar xzvf GeoLite2-Country.tar.gz
sudo cp -f GeoLite2*/*.mmdb /home/me/waf/data/
rm -rf GeoLite2*
