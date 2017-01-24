require 'httparty'

module Moocher
  module Creditcard
    def cc_blacklisted?(cc_number)
      bin = cc_number.to_s.strip[0..5]
      return "Not a Valid input" if (bin =~ /\A\d{6}/).nil?
      base_url = 'https://api.moocher.io/l/BINLISTNET/t/creditcard/i/'
      response = HTTParty.get("#{base_url}#{bin}")
      response.success? ? response.parsed_response : response.success?
    end
  end
end
