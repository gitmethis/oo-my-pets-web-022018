class Owner
  
  # code goes here
  @@all = []

  
  attr_accessor :name, :pets
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = { 
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end
  
  def self.count
    self.all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.all
    @@all  
  end
  
  def species
    "human"       
  end
  
  def say_species
    "I am a human."  
  end
  

  
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
end