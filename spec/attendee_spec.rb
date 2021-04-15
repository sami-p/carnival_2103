require 'rspec'
require './lib/attendee'

RSpec.describe Attendee do
  it 'exists' do
    attendee = Attendee.new('Bob', 20)
    expect(attendee).to be_an_instance_of(Attendee)
  end
end
