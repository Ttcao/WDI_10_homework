# HappiTails

# Objectives:
# Practice creating objects
# You are the manager at HappiTails animal shelter. You need to manage your shelter by storing and manipulating information about clients and animals.

# Specification:
# Object Specs:
# Animal:
# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.
# An animal can have multiple toys.

# Client:
# A client should have a name.
# A client should have a number of children.
# A client should have an age.
# A client should have a list of pets.

# Shelter:
# The shelter should display all the clients.
# The shelter should display all the animals.

# Relationships:
# A client should be able to adopt an animal.
# A client should be able to put an animal up for adoption

# Phase 1
# Can create animals and clients
# Phase 2
# New animals and clients can be added to the shelter
# Phase 3
# When creating an animal or client, the user is prompted for information like names, gender etc.
# Phase 4
# At start, the user is prompted with a menu of options:
# display all animals
# display all clients
# create an animal
# create an client
# facilitate client adopts an animal
# facilitate client puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process

require 'pry'

client_list = []
animal_list = []

def add_client(client)
  clients_list.push(client)
end

def add_animal(animal)
  animal_list.push(animal)
end

class Animal

  attr_accessor :name, :age, :gender, :species, :toylist

  def initialize
    puts "What kind of animal would you like to adopt?"
    @species = gets.chomp
    puts "Would you like a female or male " + "#{@species}?"
    @gender = gets.chomp
    puts "What age would you like your pet to be?"
    @age = gets.chomp
    puts "What would you like to name your new pet?"
    @name = gets.chomp
    @toylist = []
  end

  def give_toy
    puts "What toy would you like to take home?"
    toy = gets.chomp
    @toylist.push(toy)
  end

end

class Client

  attr_accessor :name, :age, :num_of_children, :pets_list

  def initialize
    puts "What is your name?"
    @name = gets.chomp
    puts "What is your age?"
    @age = gets.chomp
    puts "How many children do you have?"
    @num_of_children = gets.chomp
    @pets_list = []
  end

  # Client adopts an animal
  def adopt_pet(animal)
    @pets_list.push(animal)
  end

  # Client puts an animal up for adoption
  def for_adoption(animal)
    @pets_list.pop(animal)
  end

end

# menu options
def menu_options
puts "Choose an option:
1. Display all animals
2. Display all clients
3. Create an animal
4. Create an client
5. Facilitate client adopts an animal
6. Facilitate client puts an animal up for adoption"

option = gets.chomp
case option
 when "1"
   puts "#{animal_list}"
 when "2"
   puts "#{client_list}"
 when "3"
   Animal.new
 when "4"
   Client.new
 when "5"
   adopt_pet
 when "6"
   for_adoption
 else
   puts "Invalid option"
 end

end

menu_options
