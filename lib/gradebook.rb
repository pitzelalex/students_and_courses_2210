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

  def list_students
    @student_list = []
    @courses.each do |course|
      unique_students = course.students.select do |student|
        !@student_list.include?(student.name)
      end
      @student_list << unique_students.map do |student|
        student.name
      end
      @student_list.flatten!
    end
    return @student_list
  end
end