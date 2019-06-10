require "bundler/setup"
require "herboriste"
require "webmock/rspec"
require "support/fake_trefle"

RSpec.configure do |config|
  # Disable external net connections
  WebMock.disable_net_connect!(allow_localhost: true)

  config.before(:each) do
    stub_request(:any, /trefle.io/).to_rack(FakeTrefle)
  end

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
