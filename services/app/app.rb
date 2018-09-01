Bundler.require(:default)

set :bind, '0.0.0.0'

get '/' do
  "Hello, World! [#{ENV['ENV']}]"
end
