require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end


  def say_species
     "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |x, y|
      y.each do |z|
        z.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end















  def self.all
    @@all
  end

  def self.count
    all.length
  end

  def self.reset_all
    all.clear
  end


end