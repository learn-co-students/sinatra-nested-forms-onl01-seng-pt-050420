class Ship
  
  attr_accessor :name, :type, :booty
  
  SHIPS = []
  
  def self.all
    @@all
  end
  
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    SHIPS << self
  end
end