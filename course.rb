class Course
  attr_reader :name
  attr_accessor :students

  @@courses = []

  def initialize(name)
    @name = name
    @students = []
  end

  def self.create(name)
    course = self.new(name)
    @@courses << course
    course
  end

  def self.all
    @@courses
  end

  def add_students(student)
    person = find_student(student)
    return "Already exist" unless person.nil?
    
    @students << student
  end

  def find_student(given_student)
    @students.find { |student| student == given_student}
  end

  def average_marks
    sum =  @students.inject(0) { |sum, student| sum + student.mark }
    
    sum/@students.length
  end

  def student_rating(student)
    case student.mark
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

  def failed_students
    grade = nil
    @students.each do |student|
       grade = student_rating(student)
       return student.name if grade == "Fail"
    end
     "all passed" unless grade == "Fail"
  end

  def list_student_by_grade(given_grade)
    grade = nil
    @students.each do |student|
       grade = student_rating(student)
       puts student.name if grade == given_grade
    end
  end

  def passed_male_students
    @students.select {|student| student.mark > 45 && student.gender == "male"}
  end

  def find_by_admission_number(number)
    @students.find { |student| student.admission_no = number}
  end
   
end