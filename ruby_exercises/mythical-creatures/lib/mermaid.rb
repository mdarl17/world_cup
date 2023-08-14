class Mermaid
    attr_reader :name, :age
    def initialize(name)
        @name = name
        @age = 22
    end
    
    def get_older
        @age += 1
    end
end