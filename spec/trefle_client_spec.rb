RSpec.describe Herboriste::TrefleClient do
  it "initiate" do
    client = Herboriste::TrefleClient.new(token: "12345")
    expect(client.class).to eq(Herboriste::TrefleClient)
  end

  it "initiate with a token from ENV" do
    ENV["TREFLE_TOKEN"] = "123456789"

    client = Herboriste::TrefleClient.new
    expect(client.class).to eq(Herboriste::TrefleClient)
  end

  it "through an error if token is empty" do
    ENV["TREFLE_TOKEN"] = nil

    expect{
      Herboriste::TrefleClient.new
    }.to raise_error(ArgumentError)
  end

  it "through an error if token is nil" do
    ENV["TREFLE_TOKEN"] = nil

    expect{
      Herboriste::TrefleClient.new
    }.to raise_error(ArgumentError)
  end

  it "hides the token from inspected" do
    client = Herboriste::TrefleClient.new(token: "12345")
    expect(client.inspect).to include('@token="*****"')
  end
end
