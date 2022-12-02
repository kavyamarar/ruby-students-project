class College
  attr_reader :college_name

  @@courses = []

  def initialize(college_name)
    @college_name = college_name
    @courses =[]
  end

  def self.create(college_name)
    course = self.new(college_name)
    @@courses << course
  end

  def self.all
    @@courses
  end

  def add_course
    @courses << course
  end

  def all_students
    @courses.flat_map { |course| course.students}
  end

  def find_course(name)
    @courses.find { |course| course.name == name}
  end

end