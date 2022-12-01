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
  
end