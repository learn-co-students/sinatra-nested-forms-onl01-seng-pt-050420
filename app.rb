require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :new
    end

    get '/new' do
      #binding.pry
      erb :root
    end

  end
end
