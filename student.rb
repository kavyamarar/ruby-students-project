class Student
  attr_reader :name, :admission_no, :mark, :gender
  
  @@students = []
  
  def initialize (name, admission_no, mark, gender)
    @name = name
    @admission_no = admission_no
    @mark = mark
    @gender = gender
  end

  def self.create(name, admission_no, mark, gender)
    student = self.new(name, admission_no, mark, gender)
    @@students << student
    student
  end

  def self.all
    @@students
  end

  def self.female_students
    all.select { |student| student.gender == "female"}
  end

  def self.male_students
    all.select { |student| student.gender == "male"}
  end

end