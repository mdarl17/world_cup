class Dragon
    attr_reader :name, :color, :rider

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @eat = 0
    end

    def hungry?
        @eat >= 3 ? hungry = false : hungry = true
    end

    def eat
        @eat += 1
    end
end