class Hobbit
    attr_reader :name, :disposition, :age
    
    def initialize(name, disposition = 'homebody')
        @name = name
        @disposition = disposition
        @age = 0
        @has_ring = has_ring?
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        @age > 32 ? true : false
    end

    def old?
        @age > 100 ? true : false
    end

    def has_ring?
        self.name.downcase == 'frodo' ? true : false
    end

    # OR
    # This will work as well:

    # def has_ring?
    #     self.name == 'Frodo' ? true : false
    #     # OR
    #     # @name == 'Frodo' ? true : false
    # end
    
    def is_short?
        self.class == Hobbit ? true : false
    end
end