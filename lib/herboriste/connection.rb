require "httparty"
module Herboriste
  module Connection
    def get( endpoint, options = {} )
      response = HTTParty.get(
        "https://trefle.io/api" + endpoint,
        headers: { authorization: @token }
      )

      return {status: response.code, body: response.body}
    end
  end
end
