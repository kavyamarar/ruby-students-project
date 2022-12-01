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
    @cyber_security = Course.create("cyber_security")
    @artificial_intellegence = Course.create("artificial_intellegence")
    @cloud_computing = Course.create("cloud_computing")
  end

end