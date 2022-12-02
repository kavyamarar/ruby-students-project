require "./student.rb"

class Base

  def process
    create_students
    create_course
  end

  def create_students
    @kavya = Student.create("kavya" , 102, 98, "female")
    @snehith = Student.create("snehith" , 103, 28, "male")
    @nandu = Student.create("nandu" , 104, 75, "male")
    @shadil = Student.create("shadil" , 105, 65, "male")
    @nimitha = Student.create("nimitha" , 106, 90, "female")
    @nabhan = Student.create("nabhan" , 107, 94, "male")
    @karthika = Student.create("karthika" , 108, 59, "female")
    @steve = Student.create("steve" , 109, 46, "male")
    @ansaf = Student.create("ansaf" , 110, 60, "male")
    @sandra = Student.create("sandra" , 111, 83, "female")
  end

  def create_course
    @robotics = Course.create("robotics")
    @information_technoloy = Course.create("information_technoloy")
    
  end

  def create_college
    @lbs = College.create("lbs")
    @tkm =College.create("tkm")
  end

  def add_student_to_course
    @robotics.add_students(@kavya)
    @robotics.add_students(@snehith)
    @robotics.add_students(@nandu)
    @robotics.add_students(@nimitha)
    @robotics.add_students(@shadil)
    @information_technoloy.add_students(@sandra)
    @information_technoloy.add_students(@nabhan)
    @information_technoloy.add_students(@ansaf)
    @information_technoloy.add_students(@karthika)
    @information_technoloy.add_students(@sandra)
  end

  def add_course_to_college
    @lbs.add_course(@robotics)
    @tkm.add_course(@information_technoloy)
  end

end