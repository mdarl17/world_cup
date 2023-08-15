class Wizard
    attr_reader :name

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        # HAD TO MOVE '@cast_count' ABOVE '@rested'
        # B/C '@rested' USES '@cast_count' IN METHOD DEFINITION!!!
        @cast_count = 0
        @rested = rested?
    end

    def bearded?
        @bearded
    end

    def incantation(str)
        "sudo #{str}"
    end

    def rested?
        @cast_count >= 3 ? false : true
    end

    def cast
        @cast_count += 1
        "MAGIC MISSILE!"
    end
end

# gandalf = Wizard.new('Gandalf')
# puts gandalf.cast
