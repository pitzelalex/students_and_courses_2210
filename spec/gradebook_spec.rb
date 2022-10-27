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
  end
end