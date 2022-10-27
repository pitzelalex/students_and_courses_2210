class Gradebook
  attr_reader :instructor,
              :courses

  def initialize(name)
    @instructor = name
    @courses = []
  end
end