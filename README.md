# Cenithub Ruby Client

Ruby API client for objects to [Cenithub](http://www.cenithub.com)

## Installation

Add this line to your application's Gemfile:

    gem 'cenit_ruby', github: 'openjaf/cenit_ruby'

And then execute:

    $ bundle

## Usage

Add your CenitHub credentials to `config/initializers/cenithub.rb`:

```ruby
CenitRuby.configure do |config|
  config.connection_token = "YOUR TOKEN"
  config.connection_id = "YOUR CONNECTION ID"
end
```

You can now send json payload objects to Cenithub by calling:

```ruby
CenitRuby::Client.push(json_payload)
```

## Use console

You can also use the console to debug or test pushing objects.

Start the console like this from your application where you are using Cenithub-ruby.

```shell
bundle exec cenithub-console
```

In the console you will have to setup your credentials, then you can push json objects like this:

```ruby
Cenithub.configure do |config|
  config.connection_token = "YOUR TOKEN"
  config.connection_id = "YOUR ID"
end

pirate_payload = %{{"pirates": [{"id": "1", "name": "Blackbeard"}]}}

CenitRuby::Client.push(pirate_payload)
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/cenit_ruby_/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


![Cenithub Logo](http://www.cenitsaas.com)

This gem is 100% open source an licensed under the terms of the New BSD License.
