require 'pry'

class Cat
  attr_accessor :owner, :mood
  attr_reader :cat, :name

  @@all = []

  def initialize(name, owner) 
    @owner=(owner)
    @owner.cats << self
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def name
    @name 
  end

  def mood
    @mood 
  end

  def self.all
    @@all
  end
  
end