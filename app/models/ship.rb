class Ship
  
  attr_accessor :name, :type, :booty
  
  @@ships = []
  
  def self.all
    @@ships
  end
  
  def self.clear
    @@ships = []
  end 
  
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@ships << self
  end
  
  
end