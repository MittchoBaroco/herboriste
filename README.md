# Herboriste

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/herboriste`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'herboriste'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install herboriste

## Usage

### Initialize client
In order to use [Trefle API](https://trefle.io/) you are required to [register](https://trefle.io/registrations/new) for an API token.

Once registered you can Initialize the herboriste's trefle client like so:
```ruby
client = Herboriste::TrefleClient.new token: 'xxxxxxxxxxxxxxxxx'
#<Herboriste::TrefleClient:0x00007fbfb8ceea08 @token="*****">
```
You can also pass your token as an environment variable like so:
```ruby
ENV['TREFLE_TOKEN'] = 'xxxxxxxxxxxxxxxxx'
client = Herboriste::TrefleClient.new
#<Herboriste::TrefleClient:0x00007fbfb8cf6118 @token="*****">
```

### Query the API
If you know the actual Treffle id of the plant:
```
client.plant id: 211550
# => {"slug"=>"pimpinella-anisoides", "scientific_name"=>"Pimpinella anisoides", "link"=>"http://trefle.io/api/plants/211550", "id"=>211550, "complete_data"=>false, "common_name"=>nil}
```

You can also query the API with a string
```
client.plant query: 'Pine'
# => {"slug"=>"pimpinella-anisoides", "scientific_name"=>"Pimpinella anisoides", "link"=>"http://trefle.io/api/plants/211550", "id"=>211550, "complete_data"=>false, "common_name"=>nil}...
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/herboriste. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Herboriste project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/herboriste/blob/master/CODE_OF_CONDUCT.md).
