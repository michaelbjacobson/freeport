require 'sinatra/base'
require 'thin'
require 'rack/ssl-enforcer'

class App < Sinatra::Base

  use Rack::SslEnforcer if ENV['RACK_ENV'] == 'production'

  get '/' do
    File.read('script')
  end

  run! if __FILE__ == $PROGRAM_NAME
end
