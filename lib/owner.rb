require 'pry'

class Owner

attr_reader :species
attr_accessor :name, :pets


@@all = []

def initialize(species)
  @@all << self
  @species = "human"
  @name = name
  @pets = {:fishes => [], :dogs => [], :cats => []}
end

def say_species
  return "I am a #{@species}."
end

def buy_fish(fish_name)
  new_fish = Fish.new(fish_name)
  @pets[:fishes] << new_fish
end

def buy_cat(cat_name)
  new_cat = Cat.new(cat_name)
  @pets[:cats] << new_cat
end

def buy_dog(dog_name)
  new_dog = Dog.new(dog_name)
  @pets[:dogs] << new_dog
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
  @pets.each do |k, v|
    v.each do |pet_object|
      pet_object.mood = "nervous"
    end
  end
  @pets.clear
end

def list_pets
  fish_count = @pets[:fishes].count
  cat_count = @pets[:cats].count
  dog_count = @pets[:dogs].count

  return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."

end

def self.all
  @@all
end

def self.count
  @@all.length
end

def self.reset_all
  @@all.clear
end





end
