# Rack::Favicon

WIP - it works with rack application, but not rails yet :P

## Installation

Add this line to your application's Gemfile:

    gem 'rack-favicon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-favicon

## Usage

```
group :development do
  gem 'rack-favicon'
end
```

```
require 'rack/favicon'
use Rack::Favicon, image: "path/to/favicon.ico"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
