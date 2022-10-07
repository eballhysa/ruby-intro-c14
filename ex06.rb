# modules

class Fib
  include Enumerable

  attr_reader :size

  def initialize(how_many)
    raise "invalid size #{how_many}" if how_many <= 1

    @size = how_many
    @numbers = Array.new size
    @numbers[0], @numbers[1] = 0,1

    2.upto(size).each { |i| @numbers[i] = @numbers[i-1] + @numbers[i-2]}
  end

  def [] (index)
    @numbers[index]
  end

  #def each
  #  @numbers.each { |num| yield num }
  #end
end

if __FILE__ == $0
  fibo = Fib.new 15
  puts fibo[5]
  sum = fibo.reduce(:+)
  p fibo.select(&:even?)
end