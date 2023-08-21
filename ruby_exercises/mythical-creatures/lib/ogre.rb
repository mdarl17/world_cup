class Ogre
    attr_reader :name, :home, :swings, :encounter_counter

    def initialize(name, home="Swamp")
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        human.encounter_counter += 1
        @encounter_counter = human.encounter_counter
        swing_at(human) if human.notices_ogre?
    end

    def swing_at(human)
        @swings += 1
    end

    def apologize(human)
        @encounter_counter = human.encounter_counter = 0
    end
end

class Human
    attr_reader :name
    attr_accessor :encounter_counter

    def initialize(name="Jane")
        @name = name
        @encounter_counter = 0
    end

    def notices_ogre?
        return true if @encounter_counter > 0 && @encounter_counter % 3 == 0
        false
    end

    def knocked_out?
        return true if @encounter_counter > 0 && @encounter_counter % 6 == 0
        false
    end
end

# ogre = Ogre.new("Shrek")
# human = Human.new("Xerxes")

# puts ogre.encounter_counter
# puts human.encounter_counter

# 6.times {
#     ogre.encounter(human)
# }

# puts human.knocked_out?
# puts ogre.encounter_counter
# puts human.encounter_counter

# ogre.apologize(human)

# puts human.knocked_out?
# puts ogre.encounter_counter
# puts human.encounter_counter
