class Ride
  attr_reader :name
  
  def initialize(ride_info)
    @name = ride_info[:name]
  end
end
