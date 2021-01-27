require 'pry'

class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species

  @@all = []
  
  def initialize(name)
    @name = name
    @cats = [] 
    @dogs = []
    @@all << self
  end

  def name
    @name
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    @cats
  end

  def dogs
    @dogs
  end

  def buy_cat(catt)
    Cat.new(catt,self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs 
    @dogs.each do |dog|
        dog.mood = "happy"
    end
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    pets = @cats + @dogs
    pets.each do |pet|
      pet.mood = "nervous"
      
      binding.pry
    end
 
  end

  
end