require 'herboriste/connection'
require 'herboriste/clients/plants'

module Herboriste
  class TrefleClient
    include Herboriste::Connection
    include Herboriste::TrefleClient::Plants

    def initialize(params={token: ENV['TREFLE_TOKEN']})
      raise ArgumentError, "Token can't be blank" if params[:token].nil? or params[:token].empty?

      @token = params[:token]
    end

    def inspect
      inspected = super

      inspected = inspected.gsub! @token, "*****"

      inspected
    end
  end
end
