class Owner
  
  # code goes here
  @@all = []
  @pets = {}
  
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
    
  end
end