class Building 
    attr_reader :address
    attr_accessor :name, :number_of_tenants

    @@all = []
    
    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address 
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_number_of_tenants
        total_tenants = @@all.reduce(0) do |total, building| 
            total + building.number_of_tenants
        end
        total_tenants / @@all.count
    end

    def placard
        "#{@name} - #{@address}"
    end

    def self.placards
        @@all.map(&:placard)
    end

    def average_tenants_per_floor
        @number_of_tenants / @number_of_floors
    end
end