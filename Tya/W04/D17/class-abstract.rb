# Create an class that is a totally intangible, abstract idea

class Block

  # define properties
  attr_accessor :length, :height, :depth

  # define initalizer
  def initialize(length, height, depth)
    @length = length
    @height = height
    @depth = depth
  end

  def squareArea
    areaOfSquare = length * height
    puts "The area of this square is " + "#{areaOfSquare}"
  end

  def squareVolume
    volumeOfSquare = length * height * depth
    puts "The area of this square is " + "#{volumeOfSquare}"
  end

def
