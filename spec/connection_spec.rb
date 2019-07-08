RSpec.describe Herboriste::Connection do
  # Connection extends TrefleClient
  let!(:client) {Herboriste::TrefleClient.new(token: "12345")}

  it 'can perfom a get query' do
    endpoint = URI('/plants')

    response = client.get(endpoint)
    body = JSON.load(response[:body])
    status = response[:status]

    expect(body.first['slug']).to eq 'bupleurum-linearifolium'
    expect(status).to eq 200
  end
end
