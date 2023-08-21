require 'rspec'
require './lib/werewolf'

RSpec.describe Werewolf do
  it 'has a name' do
    werewolf = Werewolf.new('David')
    expect(werewolf.name).to eq('David')
  end

  it 'has a location' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.location).to eq('London')
  end

  it 'is by default human' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.status).to eq(:human)
  end

  it 'when starting as a human, changing makes it turn into a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    werewolf.change!
    expect(werewolf.status).to eq(:wolf)
    expect(werewolf.status == :human).to be false
  end

  it 'when starting as a human, changing again makes it be human again' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.status).to eq(:human)

    werewolf.change!

    expect(werewolf.status).to eq(:wolf)

    werewolf.change!

    expect(werewolf.status).to eq(:human)
  end

  it 'when starting as a werewolf, changing a second time makes it a werewolf' do
    werewolf = Werewolf.new('David', 'London')

    werewolf.change!
    expect(werewolf.status).to eq(:wolf)

    werewolf.change!
    werewolf.change!

    expect(werewolf.status).to eq(:wolf)
  end

  it 'is not hungry by default' do
    # your code here
    werewolf = Werewolf.new('Scott', 'Beacon Hills')
    expect(werewolf.hungry?).to be false
  end

  it 'becomes hungry after changing to a werewolf' do
    # your code here
    werewolf = Werewolf.new('Scott', 'Beacon Hills')
    expect(werewolf.hungry?).to be false
    werewolf.change!
    expect(werewolf.hungry?).to be true
  end

  class Victim
    attr_accessor :name, :status

    def initialize(name)
      @name = :name
      @status = :alive
    end
  end

  it 'consumes a victim' do
    # your code here
    werewolf = Werewolf.new("Lon", "SoHo")
    victim_1 = Victim.new("The Queen")
    werewolf.change!
    expect{ werewolf.consume_victim(victim_1) }.to output("Mmmmmm.....#{victim_1.name} hit the spot! Buuurrrrrp!!\n").to_stdout
  end

  it 'cannot consume a victim if it is in human form' do
    # your code here
    werewolf = Werewolf.new("Lon", "SoHo")
    victim_1 = Victim.new("The Queen")
    expect{ werewolf.consume_victim(victim_1) }.to output("I'm #{werewolf.name}, and I'm in human form right now, so I can't eat #{victim_1.name} at the moment.\n").to_stdout
  end

  it 'a werewolf that has consumed a human being is no longer hungry' do
    # your code here
    werewolf = Werewolf.new("Chaney, Jr.", "New York City")
    victim_1 = Victim.new("The Queen")
    werewolf.change!
    expect(werewolf.hungry?).to eq true
    werewolf.consume_victim(victim_1)
    expect(werewolf.hungry?).to eq false
  end

  xit 'a werewolf who has consumed a victim makes the victim dead' do
    # your code here
    werewolf = Werewolf.new("Lon", "SoHo")
    victim_1 = Victim.new("The Queen")
    werewolf.consume_victim(victim_1)
    expect(victim_1.status).to eq(:dead)
    expect(victim_1.status == :alive).to be false
    victim_2 = Victim.new("Squirrel Murphy")
    expect(victim_2.status).to eq(:alive)
    werewolf.consume_victim(victim_2)
    expect(victim_2.status == :alive).to be false
    expect(victim_2.status).to eq(:dead)
  end
end
