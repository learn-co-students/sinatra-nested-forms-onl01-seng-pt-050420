class Pirate
   @@PIRATES= []
   attr_accessor :name, :weight, :height
    def initialize(args)
        @name = args[:name]
        @weight = args[:weight]
        @height = args[:height]
        @@PIRATES << self
    end
    def self.all
        @@PIRATES
    end
end