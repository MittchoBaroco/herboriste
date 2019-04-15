module Herboriste
  class TrefleClient
    def initialize(params={token: ENV['TREFLE_TOKEN']})
      @token = params[:token]
    end
  end
end
