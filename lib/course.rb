class Course
  attr_reader :name,
              :capacity,
              :students

  def initialize(name, cap)
    @name = name
    @capacity = cap
    @students = []
  end
end