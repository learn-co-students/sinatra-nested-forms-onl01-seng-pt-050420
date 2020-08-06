class Ship
  
  attr_accessor :name, :type, :booty 
  
  @@all = []
  
  def initialze(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    
    @@all << self
    
  end
  
  def self.all 
    @@all 
  end
  
  def self.clear 
    @@all.clear
  end
  
end