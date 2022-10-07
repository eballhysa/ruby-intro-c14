def greet(name='World', gender)
  title = title_of (gender)
  puts "Hello #{title} #{name}"
end

def title_of(gender)
  return 'Mr' if gender == :male
  return 'Ms' if gender == :female
  ''
end

greet "ABC", :male
