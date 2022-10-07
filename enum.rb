class Fibo
  include Enumerable

  attr_accessor :numbers

  def initialize(max)
    @numbers = Array.new(max)
    @numbers[0], @numbers[1] = 0, 1
    2.upto(max) { |i| @numbers[i] = @numbers[i-1] + @numbers[i-2] }
  end

  def each
    @numbers.each{ |num| yield num }
  end

end

fib = Fibo.new(5)
p fib
# fib.each { |num| puts num}
p fib.map { |num| num * num}
p fib.select(&:even?)
p fib.select { |num| num.even?}
p fib.reduce(:+)
#p fib