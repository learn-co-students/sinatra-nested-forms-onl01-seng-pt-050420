require './environment'

module FormsLab
  class App < Sinatra::Base
      get '/' do
        erb :root
      end

      get '/new' do
        erb :"pirates/new"
      end

      post '/pirates' do
        # Create a new pirate object from input on form
        @pirate = Pirate.new(params[:pirate])
        # Create new ship objects for multiple ships
        params[:pirate][:ships].each do |d|
          Ship.new(d)
        end
        # Shows all ships stored during creation
        @ships = Ship.all

        erb :"pirates/show"
      end
  end
end
