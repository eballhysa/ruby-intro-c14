require 'date'

class Fixnum
  def second
    seconds
  end

  def seconds
    self
  end

  def minute
    minutes
  end

  def minutes
    self * 60
  end

  def hour
    hours
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 24 * 60 * 60
  end

  def day
    days
  end

  def ago
    Time.now - self
  end

  def later
    Time.now + self
  end
end

date = Time.new(2017,07,11)
puts date.between? 23.days.ago, 20.days.later



