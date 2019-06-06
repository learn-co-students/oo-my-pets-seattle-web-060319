require 'pry'
class Owner
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all.push(self)
  end

  def Owner.all
    return @@all
  end

  def Owner.count
    if @@all.length != nil
      @@all.length
    end
  end

  def Owner.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes].push(new_fish)
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats].push(new_cat)
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs].push(new_dog)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    pets[:cats].each do |cat|
      cat.mood = "nervous"
    end

    pets[:cats].clear
    pets[:dogs].clear
    pets[:fishes].clear
  end

def list_pets
  fish_count = @pets[:fishes].length
  dog_count = @pets[:dogs].length
  cat_count = @pets[:cats].length
  return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
end

end
