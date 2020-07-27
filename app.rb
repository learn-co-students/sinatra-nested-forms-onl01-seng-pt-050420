require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root 
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |x|
        Ship.new(x)
      end
      
      @ships = Ship.all
      
      erb :'pirates/show'
    end

  end
end

=begin 

We use forms to create single objects. If we wanted to use a form a to create more than one object, we need to nest forms inside of other forms. To create to different objects, we just need to ensure we create two models (classes) for each object.

=end