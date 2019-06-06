class Cat
  attr_accessor :mood
  attr_reader :name, :owner, :happiness

  def initialize(name, happiness = 0, mood = "nervous")
    @name = name
    @happiness = happiness
    @mood = mood
  end

  def mood=(mood)
    @mood = mood
  end



end
