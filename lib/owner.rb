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
  
  
  def walk_dogs
    pets[:dogs].each {
      |dog|
      dog.mood = 'happy'
    }
  end
  
  def play_with_cats
    pets[:cats].each {
      |cat|
      cat.mood = 'happy'
    }
  end
  
  def feed_fish
    pets[:fishes].each {
      |fish|
      fish.mood = 'happy'
    }
  end
  
  def sell_pets
    
    pets.each{
      |key,each_categorie_of_pet|
      each_categorie_of_pet.each{
        |each_pet|
        each_pet.mood = 'nervous'
      }
    }
    
    
    @pets = { 
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end
  
  def list_pets
    puts "I have #{pets[:fishes].count} fish, #{pets[:dog].count} dog(s), #{pets[:cats].count} cats(s)."
  end
end