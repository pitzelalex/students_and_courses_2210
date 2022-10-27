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
end