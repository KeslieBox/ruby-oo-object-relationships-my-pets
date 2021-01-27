class Dog
  attr_accessor :owner, :mood, :dogs
  attr_reader :dog, :name

  @@all = []

  def initialize(name, owner) 
    @owner=(owner)
    @owner.dogs << self
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def name
    @name 
  end

  # def mood
  #   @mood
  # end

  # def mood=(mood)
  #   @mood = mood
  # end

  def self.all
    @@all
  end

end