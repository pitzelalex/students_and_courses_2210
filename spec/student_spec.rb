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
    it 'return the name from student.details' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.name).to eq("Morgan")
    end
  end

  describe '#age' do
    it 'return the age from student.details' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.age).to eq(21)
    end
  end

  describe '#log_score' do
    before(:each) do
      @student = Student.new({name: "Morgan", age: 21})
    end

    it 'add one score to scores array' do
      @student.log_score(89)

      expect(@student.scores).to eq([89])
    end

    it 'add three scores to scores array' do
      @student.log_score(89)
      @student.log_score(78)
      @student.log_score(92)

      expect(@student.scores).to eq([89, 78, 92])
    end
  end

  describe '#grade' do
    it 'return average of all scores' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_score(89)
      student.log_score(78)

      expect(student.grade).to eq(83.5)
    end
  end
end