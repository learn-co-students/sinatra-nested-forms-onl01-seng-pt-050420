class Ship
    attr_accessor :name, :booty, :type
    @@all = []

    def initialize(attributes)
        @name = attributes[:name]
        @booty = attributes[:booty]
        @type = attributes[:type]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

end