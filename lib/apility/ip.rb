require 'httparty'
require 'ipaddress'


module Apility
  module Ip
    def ip_blacklisted?(ipaddress)
      return "IP Address doesn't seem to be valid." if !(IPAddress.valid? ipaddress)
      base_url = 'https://api.apility.net/badip/IPV4/'
      response = HTTParty.get(base_url + ipaddress)
      response.success?
    end
  end
end
