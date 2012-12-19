# Provider

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'provider'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install provider

## Usage
## Demo:
### provide attribution
    SampleOrder.first.provide("number")
    #=> { "number" => "LSP11-0001" }

### provide association:
    SampleOrder.last.provide(["number", "customer/number"])
    #=> { "number" => "LSP11-0002", "customer/number" => "LuluLemon" }

### Note:
    only "provide!" will raise exception when the attribution or association can't be provided.
    for example:
    SampleOrder.first.provide("abcdefghijk")  #=> { "abcdefghijk" => nil }
    SampleOrder.first.provide!("abcdefghijk") #=> this case will raise exception!


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
