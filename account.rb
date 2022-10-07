class SavingsAccount
  attr_reader :balance
  attr_accessor :name

  @@bank_name = "MyBank"

  def initialize(initial_balance = 0, name='')
    @balance = 0
    deposit(initial_balance);
    self.name = name
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

  def SavingsAccount.bank_name
    @@bank_name
  end

  def <=> (other)
    self.balance <=> other.balance
  end

end

class Numeric
  @@currencies = {'euro' => 135, 'dollar' => 125, 'franc' => 120, 'pound' => 160, 'cad' => 120, 'yen' => 1.03}

  def method_missing(name, *args, &block)
    currency = name.to_s
    currency = currency[0..-2] if currency.end_with? 's'
    if @@currencies.has_key?(currency)
      self * @@currencies[currency]
    else
      super
    end
  end

end

acc1 = SavingsAccount.new 1000
acc1.deposit(5000)
acc1.withdraw 2500
acc1.deposit 100.dollars
acc1.deposit 20.euros
acc1.withdraw 20.pounds
acc1.deposit 1.franc
acc1.deposit 25000.yens

puts acc1.balance()


a = SavingsAccount.new 100, "ABC"
b = SavingsAccount.new 50, "XYZ"
c = SavingsAccount.new 75, "DEF"
p [a,b,c]
p [a,b,c].sort { |x,y| x.name <=> y.name}
