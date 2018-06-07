require "apility/version"
require "apility/creditcards"
require "apility/domains"
require "apility/emails"
require "apility/geo_ip"
require "apility/ip"
require "apility/passwords"

module Apility
  class Resource
    include Apility::Ip
    include Apility::Domain
    include Apility::Email
    include Apility::GeoIp
    include Apility::Creditcard
  end
end
