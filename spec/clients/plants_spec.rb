RSpec.describe Herboriste::TrefleClient::Plants do
  # Connection extends TrefleClient
  let!(:client) {Herboriste::TrefleClient.new(token: "12345")}

  it 'can query a plant by it\'s ID' do
    expect(client.plant(id: "211498")["id"]).to eq 211498
  end

  it "can look for a plant" do
    expect(client.plant(query: "rosemary").first["slug"]).to eq "andromeda-×jamesiana"
    expect(client.plant(query: "rosemary").length).to eq 19
  end
end
