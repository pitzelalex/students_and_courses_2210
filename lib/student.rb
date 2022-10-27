class Student
  attr_reader :details

  def initialize(details)
    @details = details
  end

  def name
    @details[:name]
  end
end