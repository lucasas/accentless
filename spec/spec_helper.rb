require File.expand_path("lib/accentless.rb")

Dir[File.expand_path("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
end

class Word
  attr_reader :value
  using Accentless

  def initialize(value)
    @value = value
  end

  def accentless
    @value.accentless
  end

  def accentless!
    @value.accentless!
  end
end
