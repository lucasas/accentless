require File.expand_path("lib/accentless.rb")

Dir[File.expand_path("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
end

