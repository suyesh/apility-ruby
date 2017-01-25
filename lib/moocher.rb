require "moocher/version"
require "moocher/creditcards"
require "moocher/domains"
require "moocher/emails"
require "moocher/geo_ip"
require "moocher/ip"
require "moocher/passwords"
module Moocher
  class Resource
    include Moocher::Ip
    include Moocher::Domain
    include Moocher::Email
    include Moocher::GeoIp
    include Moocher::Creditcard
  end
end
