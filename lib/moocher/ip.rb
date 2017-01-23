require 'httparty'
require 'ipaddress'


module Moocher
  module Ip
    def ip_blacklisted?(ipaddress)
      return "IP Address doesn't seem to be valid." if IPAddress.valid? ipaddress
      base_url = 'https://api.moocher.io/badip/IPV4/'
      response = HTTParty.get(base_url + ipaddress)
      response.success?
    end
  end
end
