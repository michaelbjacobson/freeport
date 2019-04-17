require 'sinatra/base'
require 'thin'

class App < Sinatra::Base

  get '/' do
    File.read('script')
  end

  run! if __FILE__ == $PROGRAM_NAME
end
