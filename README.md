# Accentless

Remove accents from `String`s easily, using new Ruby 2.x `Refinements`.

## Status
[![Build Status](https://travis-ci.org/lucasas/accentless.svg?branch=master)](http://travis-ci.org/lucasas/accentless?branch=master)

## Installation

Add this line to your application's Gemfile:

    gem 'accentless'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install accentless

## Usage

```ruby
require 'accentless'

class Word
  using Accentless

  def initialize(word)
    @word = word
  end

  def value
    # you can use String#accentless! method which
    # modifies original String
    @word.accentless
  end
end

Word.new("São Paulo").value #=> Sao Paulo
```

## Contributing

You can contribute easily too:

1. Fork it ( http://github.com/lucasas/accentless/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
