# inheritance
require_relative 'ex05v2'

class GraduateStudent < Student
  attr_accessor :thesis

  def initialize(id, name, surname, department, birthdate)
    super(id, name, surname, department, birthdate)
  end

  def to_s
    "#{id} - #{name} #{surname}, #{department}, #{birthdate}, #{thesis}"
  end

  def inspect
    "Student[#{id} #{name} #{surname} #{department} #{thesis}]"
  end
end

fk = Student.new(11, 'Franz', 'Kafka', 'CS', '1996-05-03')
ac = Student.new(12, 'Albert', 'Camus', 'CS', '1995-01-24')
mk = Student.new(13, 'Milan', 'Kundera', 'MATH', '1993-11-01')
sr = Student.new(14, 'Salman', 'Rushdie', 'PHYS', '1997-03-19')
am = GraduateStudent.new(15, 'Alberto', 'Moravia', 'CS', '1996-07-11')
am.thesis = 'On big data'

students = [fk, ac, mk, sr, am]
cs_students = students.select { |s| s.department == 'CS' }

puts students
p cs_students

p students.sort { |x,y| x.surname <=> y.surname }

p students.sort
puts (fk < mk)


gg = GraduateStudent.new(16, 'Gunther', 'Grass', 'MATH', '1990-01-05')
ja = GraduateStudent.new(16, 'Jane', 'Austen', 'EE', '1996-11-20')
go = Student.new(17, 'George', 'Orwell', 'MATH', '1995-04-11')
puts "#{mk.surname} comes between #{gg.surname} and #{sr.surname}" if mk.between? gg, sr

p students
students += [ja, go]
p students
puts students.first
p students.sort.first
puts students.sort { |x,y| x.name <=> y.name }.first
