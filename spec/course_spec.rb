require 'rspec'
require './lib/course'

describe Course do
  describe '#initialize' do
    before(:each) do
      @course = Course.new
    end
    
    it 'is an instance of Course' do
      expect(@course).to be_a Course
    end
  end
end