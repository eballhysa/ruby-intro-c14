# open classes
class Numeric
  def euros
    self * 135
  end

  def euro
    euros
  end
end

p 100.euros
p 35.5.euros
p 1.euro

#what about other currencies, like dollars, francs etc