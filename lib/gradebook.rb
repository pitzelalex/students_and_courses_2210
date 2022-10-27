class Gradebook
  attr_reader :instructor
  
  def initialize(name)
    @instructor = name
  end
end