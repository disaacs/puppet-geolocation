class geolitecity {
  exec { "download database":
    command => "sudo sh -c 'mkdir -p /usr/share/GeoIP && curl http://s3.amazonaws.com/burkelibbey/GeoIPCity.dat.gz | gunzip > /usr/share/GeoIP/GeoIPCity.dat'",
    onlyif => [
      "test ! -s /usr/share/GeoIP/GeoIPCity.dat"
    ]
  }
}
