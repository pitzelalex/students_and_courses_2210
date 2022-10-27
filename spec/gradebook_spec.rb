require 'rspec'
require './lib/gradebook'

describe Gradebook do
  describe '#initialize' do
    before(:each) do
      @gradebook = Gradebook.new("Alex")
    end

    it 'is an instance of Gradebook' do
      expect(@gradebook).to be_a Gradebook
    end

    it 'has an instructor' do
      expect(@gradebook.instructor).to eq("Alex")
    end

    it 'can have an array or courses' do
      expect(@gradebook.courses).to eq([])
    end
  end

  describe '#add_course' do
    it 'add a course to @courses' do
      gradebook = Gradebook.new("Alex")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Math", 3)
      gradebook.add_course(course1)
      gradebook.add_course(course2)

      expect(gradebook.courses).to eq([course1, course2])
    end
  end

  describe '#list_students' do
    it 'return a list of all students in all courses in the gradebook' do
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Math", 3)
      course3 = Course.new("Basket Weaving", 4)
      gradebook = Gradebook.new("Alex")
      course1.enroll(Student.new({name: "Morgan", age: 21}))
      course1.enroll(Student.new({name: "Mike", age: 22}))
      course2.enroll(Student.new({name: "Morgan", age: 21}))
      course2.enroll(Student.new({name: "Jamie", age: 22}))
      course2.enroll(Student.new({name: "Pat", age: 21}))
      course3.enroll(Student.new({name: "Morgan", age: 21}))
      course3.enroll(Student.new({name: "Mike", age: 22}))
      course3.enroll(Student.new({name: "Jamie", age: 22}))
      course3.enroll(Student.new({name: "Pat", age: 21}))
      course1.students[0].log_score(98)
      course1.students[0].log_score(78)
      course1.students[1].log_score(56)
      course1.students[1].log_score(77)
      course2.students[0].log_score(75)
      course2.students[1].log_score(80)
      course2.students[2].log_score(50)
      course3.students[0].log_score(65)
      course3.students[1].log_score(92)
      course3.students[2].log_score(88)
      course3.students[3].log_score(48)
      gradebook.add_course(course1)
      gradebook.add_course(course2)
      gradebook.add_course(course3)

      expect(gradebook.list_students).to eq(["Morgan", "Mike", "Jamie", "Pat"])
    end
  end
  
  describe '#students_under' do
    it 'returns a list of students below a certain grade' do
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Math", 3)
      course3 = Course.new("Basket Weaving", 4)
      gradebook = Gradebook.new("Alex")
      course1.enroll(Student.new({name: "Morgan", age: 21}))
      course1.enroll(Student.new({name: "Mike", age: 22}))
      course2.enroll(Student.new({name: "Morgan", age: 21}))
      course2.enroll(Student.new({name: "Jamie", age: 22}))
      course2.enroll(Student.new({name: "Pat", age: 21}))
      course3.enroll(Student.new({name: "Morgan", age: 21}))
      course3.enroll(Student.new({name: "Mike", age: 22}))
      course3.enroll(Student.new({name: "Jamie", age: 22}))
      course3.enroll(Student.new({name: "Pat", age: 21}))
      course1.students[0].log_score(98)
      course1.students[1].log_score(56)
      course2.students[0].log_score(75)
      course2.students[1].log_score(80)
      course2.students[2].log_score(50)
      course3.students[0].log_score(65)
      course3.students[1].log_score(92)
      course3.students[2].log_score(88)
      course3.students[3].log_score(48)
      gradebook.add_course(course1)
      gradebook.add_course(course2)
      gradebook.add_course(course3)

      expect(gradebook.students_under(75)).to eq(["Pat"])
    end
  end
end