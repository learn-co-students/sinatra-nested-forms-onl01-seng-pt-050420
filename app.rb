require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :'pirates/new'
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      puts params
      @pirate = Pirate.new(params["pirate"])
      params["pirate"]["ships"].each do |ship|
        Ship.new(ship)
      end
      erb :'pirates/show'
    end

  end
end
