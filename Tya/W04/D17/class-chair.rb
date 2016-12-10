# Create an class that represents something in this room right now

class Chair

  # define properties
  attr_accessor :legs, :seat, :comfort, :material

  # define initalizer
  def initialize(legs, seat, comfort, material)
    @legs = legs
    @seat = seat
    @comfort = comfort
    @material = material
  end

  # define all the chair's methods
  def recline(comfortlevel)
    if comfortlevel == "Lower please!"
      @comfort += 2
    elsif comfortlevel == "Higher please!"
      @comfort -= 2
    end
  end

end
