class Menu
    
    attr_accessor :name
    attr_accessor :price
    
    def initialize(name:, price:)
        self.name = name
        self.price = price
    end

    def info
        puts "#{self.name}, #{self.price}"
    end
end