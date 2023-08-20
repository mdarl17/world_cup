class Person
    attr_reader :name
    attr_writer :stoned

    def initialize(name, stoned=false)
        @name = name
        @stoned = stoned
    end

    def stoned?
        @stoned
    end
end

class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(vict)
        if @statues.count < 3
            @statues.push(vict)
            vict.stoned = true
        elsif @statues.count == 3
            @statues.push(vict)
            vict.stoned = true
            unstoned = @statues.shift
            unstoned.stoned = false
        end
    end
end

# victim1 = Person.new('Perseus')
# victim2 = Person.new('Leonitus')
# victim3 = Person.new('Hepatitis')
# victim4 = Person.new('Sagitarius')
# victim5 = Person.new('Hercules')
# medusa = Medusa.new("Medusa")

# medusa.stare(victim1)
# medusa.stare(victim2)
# medusa.stare(victim3)

# medusa.statues.each{|v| puts v.name}
# medusa.statues.each{|v| puts "Is #{v.name} still stoned? => #{v.stoned?}"}

# medusa.stare(victim4)

# medusa.statues.each{|v| puts v.name}
# medusa.statues.each{|v| puts "Is #{v.name} still stoned? => #{v.stoned?}"}
# puts "Is #{victim1.name} still stoned? => #{victim1.stoned?}!!"

# medusa.stare(victim5)

# medusa.statues.each{|v| puts "Is #{v.name} still stoned? => #{v.stoned?}"}
# puts "Is #{victim2.name} still stoned? => #{victim2.stoned?}!!"


# puts victim1.stoned?
# medusa.stare(victim1)
# puts victim1.stoned?




