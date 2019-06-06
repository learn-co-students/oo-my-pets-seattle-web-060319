require 'pry'

class Owner

attr_accessor :pets, :name
attr_reader :species

@@all = []
  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @name = name
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
    # returns all instances of Owner that have been created (FAILED - 16)
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    # binding.pry
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # binding.pry
    pets[:dogs].each do |dog|
      dog.mood="happy"
    end

  def play_with_cats
      # binding.pry
    pets[:cats].each do |cat|
    cat.mood="happy"
    end
  end

  def feed_fish
      # binding.pry
    pets[:fishes].each do |fish|
    fish.mood="happy"
    end
  end

  def sell_pets
    pets.each do |animals, attribute|
      attribute.each do |k|
        k.mood="nervous"
      end
      pets[animals] = []
    end
  end

  def list_pets
    fish_count = @pets[:fishes].length
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
end
