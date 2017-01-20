require 'httparty'
require 'ipaddress'


module Moocher
  module Ip
    def ip_blacklisted?(ipaddress)
      base_url = 'https://api.moocher.io/badip/IPV4/'
      if IPAddress.valid? ipaddress
        response = HTTParty.get(base_url + ipaddress)
        response.success?
      else
        "IP Address doesn't seem to be valid."
      end
    end
  end
end
