require "httparty"
module Herboriste
  module Get_plant

    def get_plants( plant, options = {} )
      url = "https://trefle.io/api/plants?q=#{plant}"
      response = HTTParty.get(
        url,
        headers: { authorization: @token }
      )

      return {status: response.code, body: response.body}
    end
  end
end
