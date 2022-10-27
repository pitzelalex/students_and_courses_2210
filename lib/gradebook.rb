class Gradebook
  attr_reader :instructor,
              :courses

  def initialize(name)
    @instructor = name
    @courses = []
  end

  def add_course(course)
    @courses << course
  end
end