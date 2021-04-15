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
end
