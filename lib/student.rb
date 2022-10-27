class Student
  attr_reader :details,
              :scores

  def initialize(details)
    @details = details
    @scores = []
  end

  def name
    @details[:name]
  end

  def age
    @details[:age]
  end
end