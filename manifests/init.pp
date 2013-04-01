class geolitecity {
  exec { "download database":
    command => "sudo sh -c 'mkdir -p /usr/share/GeoIP && curl http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz | gunzip > /usr/share/GeoIP/GeoIPCity.dat'"
  }
}
