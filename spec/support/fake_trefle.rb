require 'sinatra/base'

class FakeTrefle < Sinatra::Base
  get '/api/plants/:id' do
    json_response 200, 'plant.json'
  end

  get '/api/plants' do
    json_response 200, 'plants.json'
  end

  get '/api/plants?q=rosemary' do
    json_response 200, 'rosemary.json'
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end
