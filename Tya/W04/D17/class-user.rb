# Create an class that represents a person who would use an application

class User

  # define properties
  attr_accessor :name, :age, :gender, :interaction

  # define initalizer
  def initialize(name, age, gender, interaction)
    @name = name
    @age = age
    @gender = gender
    @interaction = interaction
  end

  # define all the user's methods
  def scroll
    @interaction += 10
  end


end
