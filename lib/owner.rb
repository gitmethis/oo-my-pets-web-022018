class Owner
  # code goes here
  @@all = []
  @pets = {}
  
  attr_accessor :name
  
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
       
  end
end