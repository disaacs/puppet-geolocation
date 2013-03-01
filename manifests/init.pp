class geolitecity {
  exec { "download database":
    command => "curl http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz -o /tmp/GeoLiteCity.dat.gz && gunzip /tmp/GeoLiteCity.dat.gz && sudo mkdir -p  /usr/share/GeoIP/ && sudo mv -n /tmp/GeoLiteCity.dat /usr/share/GeoIP/GeoIPCity.dat"
  }
}
