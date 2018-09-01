require './app'
require 'test/unit'
require 'rack/test'

set :environment, :test

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hi_returns_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Hello World!', last_response.body
  end
end
