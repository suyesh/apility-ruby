require 'httparty'
require 'ipaddress'


module Moocher
  module GeoIp
    def geolocate_ip(ipaddress)
      return "IP Address doesn't seem to be valid." if !(IPAddress.valid? ipaddress)
      base_url = 'https://api.moocher.io/ip/'
      response = HTTParty.get(base_url + ipaddress)
      if response.success?
        response.parsed_response
      else
        "Sorry No data was found."
      end
    end

    def geolocate_my_ip
      base_url = 'https://api.moocher.io/ip'
      response = HTTParty.get(base_url)
      if response.success?
        response.parsed_response
      else
        "Sorry No data was found."
      end
    end
  end
end
