a = 6
b = 7

def add(a, b); a+b; end
addition = lambda { |x, y| x + y }
sum = addition.call(4,5)
puts sum
def sub(a, b)
  a-b
end

def mult(a, b)
  a*b
end

puts a+b
puts add a,b
puts sub a,b
puts mult a,b

subtraction = ->(x,y) {x - y}
