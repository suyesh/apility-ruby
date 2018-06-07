require 'httparty'


module Apility
  module Domain
    def domain_blacklisted?(domain_name, details: false)
      return "Domain doesn't seem to be valid." if (domain_name =~ /^((http|https):\/\/)?[a-z0-9]*(\.?[a-z0-9]+)\.[a-z]{2,5}(:[0-9]{1,5})?(\/.)?$/ix).nil?
      base_url = 'https://api.apility.net/baddomain/'
      unless details
        response = HTTParty.get(base_url + domain_name)
        response.success?
      else
        if details == true
          response = HTTParty.get("https://api.apility.net/baddomain/#{domain_name}", headers: {"Content-Type": "application/json"})
          return response.parsed_response
        else
          "'details:' is by default set to false. You can only be set it to true."
        end
      end
    end
  end
end
