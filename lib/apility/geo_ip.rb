require 'httparty'
require 'ipaddress'


module Apility
  module GeoIp
    def geolocate_ip(ipaddress=nil)
      base_url = 'https://api.apility.net/ip/'
      if ipaddress
          return "IP Address doesn't seem to be valid." if !(IPAddress.valid? ipaddress)
          response = HTTParty.get(base_url + ipaddress)
          response.success? ? response.parsed_response : "Sorry No data was found."
        else
          response = HTTParty.get(base_url)
          response.success? ? response.parsed_response : "Sorry No data was found."
      end
    end
  end
end
