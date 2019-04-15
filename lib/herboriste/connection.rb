require "httparty"
module Herboriste
  module Connection
    def get( url, options = {} )
      response = HTTParty.get(
        url,
        headers: { authorization: @token }
      )

      return {status: response.code, body: response.body}
    end
  end
end
