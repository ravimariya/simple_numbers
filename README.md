# SimpleNumbers

[![GitHub version](https://badge.fury.io/gh/ravimariya%2Fsimple_numbers.svg)](https://badge.fury.io/gh/ravimariya%2Fsimple_numbers)

SimpleNumbers is a simple Gem to format numbers from number to usd, indian rs., number to percentage, number to phone, number to storage size and number to human number easily from view, controller or model

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_numbers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_numbers

## Usage

```ruby
123456789.inr #=>  "Rs. 123,456,789.00"
123456789.usd # => "$123,456,789.00"
1234567890.phone # => "123-456-7890"
12345.storage #=> "12.1 KB"
100.percentage #=> "100.000%"
123456789.human_number #=> "123 Million"
```
for more options [Number Helper](http://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ravimariya/simple_numbers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

