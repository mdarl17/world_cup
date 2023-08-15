require 'rspec'
require './lib/pirate'

## PROVIDED TESTS

RSpec.describe Pirate do
  it 'has a name' do
    pirate = Pirate.new('Jane')
    expect(pirate.name).to eq('Jane')
  end

  it 'can have a different name' do
    pirate = Pirate.new('Blackbeard')
    expect(pirate.name).to eq('Blackbeard')
  end

  it 'is a scallywag by default' do
    pirate = Pirate.new('Jane')
    expect(pirate.job).to eq('Scallywag')
  end

  it 'is not always a scallywag' do
    pirate = Pirate.new('Jack', 'cook')
    expect(pirate.job).to eq('cook')
  end

  it 'is not cursed by default' do
    pirate = Pirate.new('Jack')

    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be true
  end

  it 'has a booty' do
    # create a pirate
    # check that the pirate starts with 0 booty
    willy = Pirate.new('One-Eyed Willy')
    expect(willy.booty).to eq(0)
  end

  it 'gets 100 booty for robbing a ship' do
    # create a pirate
    # rob some ships
    # check that the pirate got 100 booty for each ship it robbed
    bootytang = Pirate.new('Bootytang')

    12.times do
      bootytang.robbed_ship
    end
    expect(bootytang.booty).to eq(1200)
  end
end

## MY TESTS

# RSpec.describe Pirate do
#   it 'has a name' do
#     pirate = Pirate.new('Jane')
#     expect(pirate.name).to eq('Jane')
#   end

#   it 'can have a different name' do
#     pirate = Pirate.new('Blackbeard')
#     expect(pirate.name).to eq('Blackbeard')
#   end

#   it 'can change its name' do
#     pirate = Pirate.new('Blackbeard')
#     pirate.change_name('One-Eyed Willy')
#     expect(pirate.name).to eq('One-Eyed Willy')
#   end

#   it 'is a scallywag by default' do
#     pirate = Pirate.new('Blackbeard')
#     expect(pirate.job).to eq('Scallywag')
#   end

#   it 'is a scallywag by default' do
#     pirate = Pirate.new('Jane')
#     expect(pirate.job).to eq('Scallywag')
#   end

#   it 'is not always a scallywag' do
#     pirate = Pirate.new('Davey Jones', 'Swordsman')
#     expect(pirate.job).to eq('Swordsman')
#   end

#   it 'is not always a scallywag' do
#     pirate = Pirate.new('Jack', 'cook')
#     expect(pirate.job).to eq('cook')
#   end

#   it 'is not cursed by default' do
#     pirate = Pirate.new('Jack Sparrow')

#     expect(pirate.cursed?).to be false

#     pirate.commit_heinous_act
#     expect(pirate.cursed?).to be false

#     pirate.commit_heinous_act
#     expect(pirate.cursed?).to be false

#     pirate.commit_heinous_act
#     expect(pirate.cursed?).to be true
#   end

#   it 'has a booty' do
#     # create a pirate
#     pirate = Pirate.new('Captain Hook')
#     # check that the pirate starts with 0 booty
#     expect(pirate.booty).to eq(0)
#   end

#   it 'gets 100 booty for robbing a ship' do
#     # create a pirate
#     pirate = Pirate.new("One-Eyed Willy")
#     # rob some ships
#     1001.times do
#       pirate.robbed_ship
#     end
#     # check that the pirate got 100 booty for each ship it robbed
#     expect(pirate.booty).to eq(100100)
#   end
# end
