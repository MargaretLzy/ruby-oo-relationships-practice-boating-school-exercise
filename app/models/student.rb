class Student
 attr_reader :first_name
  @@all=[]
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end
  def self.all
    @@all
  end
  
  def boatingtests
    BoatingTest.all.select{|boatingtest|boatingtest.student == self}
  end
  def all_instructors
    boatingtests.map{|boat| boat.instructor}
  end
  
  def self.find_student(first_name)
  Student.all.find{|student| student.first_name == first_name}
   end
 
 def passed
   boatingtests.select{|boat| boat.status == "passed"}
 end
   
  def grade_percentage
    @grade= (passed.count.to_f/boatingtests.count)* 100
   @grade
  end
  def add_boating_test(boatingtest,status, instructor)
    BoatingTest.new(self,boatingtest,status, instructor)
  end
end
