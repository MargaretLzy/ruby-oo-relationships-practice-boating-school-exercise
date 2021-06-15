class Instructor
 attr_reader :name
  @@all=[]
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  
   def boatingtests
    BoatingTest.all.select{|boatingtest|boatingtest.instructor == self}
  end
  
  def all_students
    boatingtests.map{|tests| tests.student}
  end
  
  def passed_students
   passed= boatingtests.select{|boatingtest|boatingtest.status == "passed"}
   passed.map{|pass|pass.student}
  end
  def pass_student(student, boatingtest)
    matched= BoatingTest.all.find{|btest| btest.student == student && btest.name == boatingtest}
    if matched
      matched.status ="passed"
    else
      BoatingTest.new(student, boatingtest, "passed", self)
    end
  end
  
  def fail_student(student, boatingtest)
     matched= BoatingTest.all.find{|btest| btest.student == student && btest.name == boatingtest}
    if matched
      matched.status ="failed"
    else
      BoatingTest.new(student, boatingtest, "failed", self)
    end
  end
end
