require 'httparty'
require 'ipaddress'


module Moocher
  module Ip
    BASE_URL = 'https://api.moocher.io/badip/IPV4/'
    def ip_blacklisted?(ipaddress)
      if IPAddress.valid? ipaddress
        response = HTTParty.get(BASE_URL + ipaddress)
        response.success?
      else
        "IP Address doesn't seem to be valid."
      end
    end
  end
end
