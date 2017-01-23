require 'httparty'


module Moocher
  module Domain
    def domain_blacklisted?(domain_name, details: false)
      return "Domain doesn't seem to be valid." if (domain_name =~ /^((http|https):\/\/)?[a-z0-9]*(\.?[a-z0-9]+)\.[a-z]{2,5}(:[0-9]{1,5})?(\/.)?$/ix).nil?
      base_url = 'https://api.moocher.io/baddomain/'
      unless details
        response = HTTParty.get(base_url + domain_name)
        response.success?
      else
        if details == true
          response = HTTParty.get("https://api.moocher.io/baddomain/#{domain_name}", headers: {"Content-Type": "application/json"})
          return response.parsed_response
        else
          "'details:' can only be set to true."
        end
      end
    end
  end
end
