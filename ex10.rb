require_relative 'ex07v4.rb'

class Account
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class SavingsAccount < Account
  attr_reader :balance

  def initialize(name, balance=0)
    self.name = name
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def to_s
    "#{self.name}-#{self.balance}"
  end

  def inspect
    to_s
  end

  def <=>(other)
    self.balance <=> other.balance
  end
end


#acc = Account.new("foo")
a = SavingsAccount.new "kafka", 5632
b = SavingsAccount.new "camus", 10000
c = SavingsAccount.new "albert", 683
arr = [a,b,c]
sa = arr.sort
sa2 = arr.sort {|first, second| first.name <=> second.name}
p arr
p sa
p sa2