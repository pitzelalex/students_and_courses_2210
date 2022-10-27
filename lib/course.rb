class Course
  attr_reader :name,
              :capacity

  def initialize(name, cap)
    @name = name
    @capacity = cap
  end
end