# open classes
class Numeric
  def euros
    self * 135
  end

  def dollars
    self * 125
  end

  def francs
    self * 120
  end

  def euro
    euros
  end

  def dollar
    dollars
  end

  def franc
    francs
  end
end

p 100.euros
p 35.5.euros
p 1.euro

p 55.dollars
p 0.5.franc

#can dd better