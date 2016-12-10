# Create an class you could imagine being useful in application designed for students in this course

class MicrowaveApp

  # define properties
  attr_accessor :name, :queue

  # define initalizer
  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  # define all the app's methods
  def inTheQueue
    @queue -= 1
    if @queue == 0
      puts "Go, go, go!"
    elsif @queue == 1
      puts "Almost there!"
    elsif @queue == 2
      puts "Not long to go"
    elsif @queue == 3
      puts "It's going to be a while"
    elsif @queue >= 4
      puts "Just go out and buy lunch"
    end
  end

end
