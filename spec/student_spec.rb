require './lib/student'

RSpec.describe Student do
  describe '#initialize' do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end
    it 'is an instance of Student' do
      expect(@student).to be_a Student
    end
  end
end