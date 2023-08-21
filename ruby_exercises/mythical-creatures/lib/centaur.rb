class Centaur
    attr_reader :name, :breed, :cranky, :rested, :sick

    def initialize(name, breed)
        @name = name
        @breed = breed
        @standing = true
        @run_count = 0
        @shoot_count = 0
        @rested = false
        @sick = false
    end

    def shoot
        return 'NO!' if cranky? || @standing == false
        @shoot_count += 1
        'Twang!!!'
    end

    def run
        return 'NO!' if laying?
        @run_count += 1
        'Clop clop clop clop!'
    end

    def cranky?
        return false if (@run_count + @shoot_count) < 3 || @rested == true
        true
    end

    def standing?
        @standing
    end

    def sleep
        return 'NO!' if @standing
        @rested = true
    end

    def lay_down
        @standing = false
    end

    def laying?
        return false if @standing
        true
    end

    def stand_up
        @standing = true
    end

    def rested?
        @rested
    end

    def sick?
        @sick
    end

    def drink_potion
        if !@standing
            puts "I can't drink the potion, I'm not standing!!"
            @rested = false
        elsif @standing && !@rested
            puts "That's a good brew (potion)..."
            @rested = true
        else
            puts "I think I'm gonna puke!!! BBBLLLAAARRRGGGHHH!!!"
            @sick = true
        end
    end
end

# centaur = Centaur.new('George', 'Palomino')
# puts "lying_down => #{!centaur.standing?}"
# puts "lies down"
# centaur.lay_down
# puts "lying down? #{centaur.laying?}"
# puts "Going to sleep"
# puts "Sleep => #{centaur.sleep}"
# puts "Sick? => #{centaur.sick}"
# puts "Rested? => #{centaur.rested?}"
# puts "Drinks Potion #1"
# centaur.drink_potion
# puts "Centaur standing?"
# puts "Stands up"
# centaur.stand_up
# puts "Centaur standing? => #{centaur.standing?}"
# puts "Drinks Potion #2"
# centaur.drink_potion
# puts "Sick now? => #{centaur.sick?}"
# puts "Drinks Potion #3 (#1 didn't work b/c lying down"
# centaur.drink_potion
#{centaur.sick?}"
# puts "centaur.cranky? => #{centaur.cranky?}"
# centaur.shoot
# puts "shoot_run_count => #{centaur.shoot_count + centaur.run_count}"
# centaur.run
# puts "shoot_run_count => #{centaur.run_count + centaur.shoot_count}"
# puts "centaur.cranky? => #{centaur.cranky?}"
# puts "centaur.standing => #{centaur.standing?}"
# centaur.shoot
# puts "shoot_run_count => #{centaur.shoot_count + centaur.run_count}"
# puts "centaur.rested => #{centaur.rested}"
# puts "centaur.cranky? => #{centaur.cranky?}"
# puts centaur.shoot

# puts "centaur.standing => #{centaur.standing?}"
# puts "centaur.laying? => #{centaur.laying?}"
# centaur.sleep
# centaur.stand_up
# puts "centaur.rested => #{centaur.rested}"
# puts "centaur.cranky? => #{centaur.cranky?}"
# puts "centaur.shoot => #{centaur.shoot}"
# puts centaur.shoot
# puts "centaur.run: #{centaur.run}"




