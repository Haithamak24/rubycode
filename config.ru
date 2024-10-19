require 'rack'
require_relative 'lib/greeter'

app = Rack::Builder.new do
  use Rack::Static, urls: ['/styles.css'], root: 'public'
  run Greeter.new
end


run app
