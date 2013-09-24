class geolocation {
  exec { "create geolocation directory":
  	command => "sudo sh -c 'mkdir -p /usr/share/GeoIP'",
  	onlyif => [
  	  "test ! -d /usr/share/GeoIP"
  	]
  }
  exec { "download city database":
    command => "sudo sh -c 'curl http://s3.amazonaws.com/shopify/s/files/2aee18af95c47346ccf4ee7e315a5d62/GeoIPCity.dat.gz | gunzip > /usr/share/GeoIP/GeoIPCity.dat'",
    onlyif => [
      "test ! -s /usr/share/GeoIP/GeoIPCity.dat"
    ],
    require => Exec["create geolocation directory"]
  }
  exec { "download isp database":
    command => "sudo sh -c 'curl http://s3.amazonaws.com/shopify/s/files/2aee18af95c47346ccf4ee7e315a5d62/GeoIPISP.dat.gz | gunzip > /usr/share/GeoIP/GeoIPISP.dat'",
    onlyif => [
      "test ! -s /usr/share/GeoIP/GeoIPISP.dat"
    ],
    require => Exec["create geolocation directory"]
  }
  exec { "download org database":
    command => "sudo sh -c 'curl http://s3.amazonaws.com/shopify/s/files/2aee18af95c47346ccf4ee7e315a5d62/GeoIPOrg.dat.gz | gunzip > /usr/share/GeoIP/GeoIPOrg.dat'",
    onlyif => [
      "test ! -s /usr/share/GeoIP/GeoIPOrg.dat"
    ],
    require => Exec["create geolocation directory"]
  }
}
