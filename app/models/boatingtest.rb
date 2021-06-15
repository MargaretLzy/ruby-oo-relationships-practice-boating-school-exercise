class BoatingTest
 attr_reader :student, :boatingtest, :status,:instructor
  @@all=[]
  def initialize(student, boatingtest, status, instructor)
    @student = student
    @boatingtest = boatingtest
    @instructor = instructor
    @status = status
    @@all << self
  end
  def self.all
    @@all
  end
end
