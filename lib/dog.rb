require 'pry'
class Dog
  attr_reader :name

  @@all = [] # instance of each puppy
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.clear_all
    @@all = []
  end

  def self.all
    @@all.each do |name|
      puts name.name
    end
  end
end
