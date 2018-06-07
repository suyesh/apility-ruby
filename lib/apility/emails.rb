require 'httparty'


module Apility
  module Email
    def email_blacklisted?(email, details: false)
      return "Email doesn't seem to be valid." if (email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i).nil?
      base_url = 'https://api.apility.net/bademail/'
      unless details
        response = HTTParty.get(base_url + email)
        (response["response"]["email"]["blacklist"].empty? && response["response"]["source_ip"]["blacklist"].empty?) ? false : true
      else
        if details == true
          response = HTTParty.get("https://api.apility.net/bademail/#{email}", headers: {"Content-Type": "application/json"})
          return response.parsed_response
        else
          "'details:' is by default set to false. You can only be set it to true."
        end
      end
    end
  end
end
