require 'rspec'
require './lib/ride'

RSpec.describe Ride do
  it 'exists' do
    ride = Ride.new({name: 'Ferris Wheel', cost: 0})
    expect(ride).to be_an_instance_of(Ride)
  end

  it 'has a name' do
    ride = Ride.new({name: 'Ferris Wheel', cost: 0})
    expect(ride.name).to eq('Ferris Wheel')
  end
end
