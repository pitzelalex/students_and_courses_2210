require 'rspec'
require './lib/course' 
# Why is this working without the require './lib/student' ???

describe Course do
  describe '#initialize' do
    before(:each) do
      @course = Course.new("Calculus", 2)
    end

    it 'is an instance of Course' do
      expect(@course).to be_a Course
    end

    it 'has a name' do
      expect(@course.name).to eq("Calculus")
    end

    it 'has a capacity' do
      expect(@course.capacity).to eq(2)
    end

    it 'can have students' do
      expect(@course.students).to eq([])
    end
  end

  describe '#full?' do
    it 'checks if course is at capacity' do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})

      expect(course.full?).to be false

      course.enroll(student1)
      course.enroll(student2)

      expect(course.full?).to be true
    end
  end

  describe '#enroll' do
    it 'add student to @students' do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)

      expect(course.students).to eq([student1, student2])
    end
  end
end