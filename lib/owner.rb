class Owner
  
  # code goes here
  @@all = []

  
  attr_accessor :name, :pets
  
  def initialize(name)
    name
  end
  
  def self.count
    self.all.length
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
    "I am a human"  
  end
  
  def pets
    @pets = { 
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end
  
  
  def buy_fish
    
  end
end