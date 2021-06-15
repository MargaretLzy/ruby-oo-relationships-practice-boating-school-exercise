require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1=Student.new("Margaret")
s2=Student.new("Alice")
s3=Student.new("Sophie")
s4= Student.new("Spongebob")

i1= Instructor.new("Mr. KJAY")
i2= Instructor.new("Professor Ellman")
i3 = Instructor.new("Professor Walter")

bt1= BoatingTest.new(s1,"Have fun boating","passed",i1)
bt2 = BoatingTest.new(s2,"Don't Crash","pending",i2)
bt3 = BoatingTest.new(s3,"Don't Crash","failed",i2)
bt4 = BoatingTest.new(s1,"Don't Crash","failed",i2)
bt5 = BoatingTest.new(s2,"Power Steering","passed",i3)
bt5 = BoatingTest.new(s4,"Don't Crash","passed",i3)
binding.pry
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

