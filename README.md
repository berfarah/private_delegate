# PrivateDelegate

Keep your delegations away from prying eyes / objects with this gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'private_delegate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install private_delegate

## Usage

```rb
class User
  has_one :address
  private_delegate :zip_code, to: :address
end

# ... later
user.zip_code
# => NoMethodError: private method `zip_code' called for #<User:0x007f994d037288>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/berfarah/private_delegate.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

