# open classes
class Numeric
  @@currencies = {'euro' => 135, 'dollar' => 125, 'franc' => 120, 'pound' => 160, 'cad' => 120}

  def method_missing(name, *args, &block)
    currency = name.to_s
    currency = currency[0..-2] if currency.end_with? 's'
    if @@currencies.has_key?(currency)
      self * @@currencies[currency]
    else
      super
    end
  end

  #def in(currency)
  #  self / @@currencies[currency.to_s]
  #end

end

if __FILE__ == $0
  p 100.euros
  p 35.5.euros
  p 1.euro
  p 50.pounds
  p 1.cad

  #puts "converted as #{100.0.euros.in :pound}"

  p 55.dollars
  p 0.5.franc
end


