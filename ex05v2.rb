# classes

class Student
  include Comparable

  attr_accessor :name, :surname, :department, :birthdate
  attr_reader :id

  def initialize(id, name, surname, department, birthdate)
    @id = id
    @name = name
    @surname = surname
    @department = department
    @birthdate = birthdate
  end

  def to_s
    "#{id} - #{name} #{surname}, #{department}, #{birthdate}"
  end

  def inspect
    "Student[#{id} #{name} #{surname} #{department}]"
  end

  def <=> (other)
    self.surname <=> other.surname
  end

end

if __FILE__ == $0
  fk = Student.new(11, 'Franz', 'Kafka', 'CS', "1996-05-03")
  ac = Student.new(12, 'Albert', 'Camus', 'CS', "1995-01-24")
  mk = Student.new(13, 'Milan', 'Kundera', 'MATH', "1993-11-01")
  sr = Student.new(14, 'Salman', 'Rushdie', 'PHYS', "1997-03-19")

  students = [fk, ac, mk, sr]
  cs_students = students.select { |s| s.department == 'CS' }

  puts students
  p cs_students
end


