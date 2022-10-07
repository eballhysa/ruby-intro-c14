=begin
# methods
def greet1(name)
  result = "Hello #{name}"
  return result
end

#Ruby doesnt like return
def greet2(name="World")
  "Hello #{name}"
end

puts greet1('stranger')
puts greet2('stranger')

def title_for(gender)
  gender == 'M' ? 'Mr' : 'Ms'
end

def greet3(name, gender)
  "Hello #{title_for(gender)} #{name}"
end

puts greet3('Matz', 'M')

# try default parameters
def greet(name, gender = 'F') # and discriminate positively
  "Hello #{title_for(gender)} #{name}"
end

# try some poetry mode
puts greet('Matz', 'M')
puts greet('Ada')

def general_greet(name, gender = 'F', greeting = 'Hi')
  "#{greeting} #{title_for(gender)} #{name}"
end

def say_hi(name, gender)
  general_greet(name, gender) # use default greeting
end

def say_bye(name, gender = 'F')
  general_greet name, gender, 'Goodbye' # greeting value
end

puts say_hi('James Gosling', 'F')
puts say_bye('Linda')
=end


# lambdas
a = 5
b = 6
puts a + b

def add(a, b)
  a + b
end

puts add(5, 6)
addition = lambda { |x, y| x + y }
subtraction = ->(x,y) {x - y}
puts addition.call 5, 6
puts subtraction.call 5, 6
puts addition.class

def calculate(a, b, binary_op)
  binary_op.call a, b
end

addop = lambda {|x, y| x + y}
subop = lambda {|x, y| x - y}
mulop = lambda {|x, y| x * y}
divop = lambda {|x, y| x / y}

puts calculate(3,5, addop)
puts calculate(3,5, subop)
puts calculate(3,5, mulop)
puts calculate(3,5.0, divop)

#blocks
def calc_with_block(a,b)
  yield a,b
end

puts calc_with_block(3,5) {|x,y| x+y}
puts calc_with_block(3,5) {|x,y| x-y}
puts calc_with_block(3,5) {|x,y| x*y}
puts calc_with_block(3,5.0) {|x,y| x/y}

def foo
  puts "before block"
  yield
  puts "after block"
end

foo {puts "inside block"}

def foo2
  if block_given?
    puts "before block"
    yield
    puts "after block"
  else
    puts "no block given as input"
  end
end

foo2 #{puts "inside block"}

#loops revisited
[ 'cat', 'dog', 'horse' ].each {|name| print name, ' '}
5.times { print "*" }
5.times { |i| puts "#{i}" }
3.upto(6) {|i| print i }
('a'..'e').each {|ch| print ch }
puts

# blocks with array class
p animals = %w[ant bee cat dog lioness elk]
p animals.reject{|a| a =~ /a/}
      .select{|a| a.length < 5}
      .map{|a| a.upcase}

