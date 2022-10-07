require 'date'

class Student
  attr_accessor :name, :surname, :dept, :birthdate

  @@university = "UNYT"

  def initialize(name, surname, dept, birthdate=nil)
    @name = name
    @surname = surname
    @dept = dept
    @birthdate = birthdate
  end

  def age
    Time.now.year - birthdate.year unless birthdate.nil?
  end

  def self.university
    @@university
  end

end

turing = Student.new('Alan', 'Turing', 'CS', Date.new(1996, 3, 24))
shannon = Student.new('Claude', 'Shannon', 'EE')
p turing
p shannon

puts Student.university
puts turing.name
puts shannon.surname
puts turing.age
p shannon.age

