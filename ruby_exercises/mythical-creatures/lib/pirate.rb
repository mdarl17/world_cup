class Pirate
    attr_reader :name, :job, :booty

    # 'initialize' method MUST be defined
    # whenever '.new' is used to instantiate
    def initialize(name, job = 'Scallywag')
        @name = name
        @job = job
        @heinous_act_count = 0
        @booty = 0
    end

    def change_name(new_name)
        @name = new_name
    end

    def cursed?
        @heinous_act_count >= 3 ? true : false
    end

    def commit_heinous_act
        @heinous_act_count += 1
    end

    def robbed_ship
        @booty += 100
    end
end