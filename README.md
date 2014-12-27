# Camelizable

module Camerazable for Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'camelizable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install camelizable

## Usage

```ruby
require 'camelizable'

class String
  include Camelizable
end

p "foo_bar_baz".lcc            #=> "fooBarBaz"
p "foo bar baz".lcc            #=> "fooBarBaz"
p "foo/bar_baz".lcc            #=> "fooBarBaz"

p "foo_bar_baz".ucc            #=> "FooBarBaz"
p "foo bar_baz".ucc            #=> "FooBarBaz"
p "foo/bar_baz".ucc            #=> "FooBarBaz"

p "foo_bar.baz".lcc(/_/)       #=> "fooBar.baz"
p "foo_bar_baz".lcc(/_bar_/)   #=> "fooBaz"
p "foo_bar_baz".lcc(/[ar]/)    #=> "foo_b_bZ"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/camelizable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
