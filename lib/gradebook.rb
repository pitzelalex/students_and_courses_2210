class Gradebook
  attr_reader :instructor

  def initialize(name)
    @instructor = name
    @courses
  end
end