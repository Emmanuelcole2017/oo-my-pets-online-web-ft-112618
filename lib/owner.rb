class Owner
  # code goes
  attr_accessor :species, :name, :pets
  @@all = []

  def initialize(species = "human")
      @species = species
      instance = self
      @pets = {cats: [], dogs: [], fishes: []}
      @@all << instance
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fishInstance = Fish.new(name)
    @pets[:fishes] << fishInstance
  end
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def species=(species)
    raise NoMethodError if species
  end

  def species
    @species = "human"
  end
end
