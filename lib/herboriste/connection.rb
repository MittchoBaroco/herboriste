require "httparty"
module Herboriste
  module Connection
    def get( endpoint, options = {} )
      uri = "https://trefle.io/api" + endpoint.to_s
      response = HTTParty.get(
        uri,
        headers: { authorization: @token }
      )

      return {status: response.code, body: response.body}
    end
  end
end
