class Werewolf
    attr_reader :name, :location, :status
    attr_writer :hungry

    def initialize(name, location='not given')
        @name = name
        @location = location
        @status = :human
        @hungry = false
    end

    def human?
        @status == :human
    end

    def wolf?
        @status == :wolf
    end

    def change!
        if @status == :human
            @status = :wolf
            @hungry = true
        else
            @status = :human
            @hungry = false
        end
    end

    def hungry?
        @hungry
    end

    def consume_victim(victim)
        if @status == :human
            puts "I'm #{name}, and I'm in human form right now, so I can't eat #{victim.name} at the moment."
        else
            @hungry = false
            victim.status = :dead
            puts "Mmmmmm.....#{victim.name} hit the spot! Buuurrrrrp!!"
        end
    end
end

class Victim
    attr_accessor :name, :status

    def initialize(name)
        @name = name
        @status = :alive
    end
end

scott = Werewolf.new('Scott', 'Beacons Hill')
victim_1 = Victim.new("The Queen")
victim_2 = Victim.new("Dan O'Callahan")
# puts scott.wolf?
# puts scott.human?
# puts scott.change!

scott.change!
puts "Wolf hungry? => #{scott.hungry?}"
# puts "#{victim_1.name}'s status is: #{victim_1.status.upcase}"
scott.consume_victim(victim_1)
puts "#{victim_1.name}'s status is: #{victim_1.status.upcase}"
puts "Is #{victim_1.name} alive??"
if victim_1.status == :alive
    puts "Yes, #{victim_1.name} is alive and well at the moment."
else 
    puts "Sadly, #{victim_1.name} was eaten by a werewolf named #{scott.name}, from #{scott.location}."
end
puts "Wolf hungry? => #{scott.hungry?}"
scott.change!
puts "#{scott.name}y's current form is => #{scott.status}"
puts "Is #{victim_1.name} alive? => #{victim_1.status == :alive}"
puts "Wolf hungry? => #{scott.hungry?}"
puts "Is #{victim_2.name} alive? => #{victim_2.status == :alive}, they are #{victim_2.status}.upcase" 
scott.consume_victim(victim_2)
puts "Wolf hungry? => #{scott.hungry?}"
puts "The Wolf? => #{scott.status == :wolf}"
scott.change!
puts "The Wolf? => #{scott.status == :wolf}"
scott.consume_victim(victim_1)
puts "is #{victim_2.name} alive? => #{victim_2.status}"
puts "The Wolf? => #{scott.status == :wolf}"
scott.change!

puts "Wolf hungry? => #{scott.hungry?}"

puts "Victim status update...#{victim_1.name} is #{victim_1.status.upcase}!  #{victim_2.name} is #{victim_2.status.upcase}!"
# puts scott.status == :human