require 'rspec'
require './lib/course'

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
end