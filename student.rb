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

  def self.students_by_grade_and_name
    data = {}
    all.each do |student|
      data[student.grade] = data[student.grade].nil? ? [] : data[student.grade]st
      data[student.grade] << student.name
    end
    data
  end

  def self.get_students_name_by_grade(grade)
    all.select { |student| student.student_rating == grade}.map {|student| student.name}
  end

  def passed?
    mark >= 45
  end

  def failed?
    !passed?
  end

  def grade
    case mark
    when 90..100
      "A"
    when 80..89
      "B"
    when 70..79
      "C "
    when 60..69
      "D"
    when 45..59
      "E"
    else
      "Fail"
    end
  end

end