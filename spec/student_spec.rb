require './lib/student'

RSpec.describe Student do
  describe '#initialize' do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end
    it 'is an instance of Student' do
      expect(@student).to be_a Student
    end

    it 'stores the students details' do
      expect(@student.details).to eq({name: "Morgan", age: 21})
    end

    it 'can store scores' do
      expect(@student.scores).to eq([])
    end
  end
  
  describe '#name' do
    it 'returns the name from student.details' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.name).to eq("Morgan")
    end
  end

  describe '#age' do
    it 'returns the age from student.details' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.age).to eq(21)
    end
  end

  describe '#log_score' do
    before(:each) do
      @student = Student.new({name: "Morgan", age: 21})
    end
    it 'adds one score to scores array' do
      @student.log_score(89)

      expect(@student.scores).to eq([89])
    end
  end
end