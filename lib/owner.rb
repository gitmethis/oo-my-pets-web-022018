class Owner
  # code goes here
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    name
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset
    @@all = []
  end
end