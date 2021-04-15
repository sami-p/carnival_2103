require 'rspec'
require './lib/carnival'
require './lib/attendee'
require './lib/ride'

RSpec.describe Carnival do
  it 'exist' do
    jeffco_fair = Carnival.new("Jefferson County Fair")
    expect(jeffco_fair).to be_an_instance_of(Carnival)
  end

  it 'has a name' do
    jeffco_fair = Carnival.new("Jefferson County Fair")
    expect(jeffco_fair.name).to eq("Jefferson County Fair")
  end

  it 'starts with no rides' do
    jeffco_fair = Carnival.new("Jefferson County Fair")
    expect(jeffco_fair.rides).to eq([])
  end

  it 'can add rides' do
    jeffco_fair = Carnival.new("Jefferson County Fair")
    ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
    bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
    scrambler = Ride.new({name: 'Scrambler', cost: 15})

    jeffco_fair.add_ride(ferris_wheel)
    jeffco_fair.add_ride(bumper_cars)
    jeffco_fair.add_ride(scrambler)

    expect(jeffco_fair.rides).to eq([ferris_wheel, bumper_cars, scrambler])
  end
end
