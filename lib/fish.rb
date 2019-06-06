class Fish
  attr_reader :name, :owner,:happiness,:mood
  def initialize(name, happiness = 0, mood = "nervous")
    @name = name
    @happiness = happiness
    @mood = mood
  end

  def mood=(mood)
    @mood = mood
  end
end
