#arrays
iarr = [1,2,3]
p iarr

sarr = ["one", "two", "three"]  # or equivalently sarr = %w[one two three]
p sarr

mixed_arr = [1, "two", 1.5, nil]
p mixed_arr

iarr[2] *= 2
p iarr


sentence = "Ruby is a beautiful language"
words = sentence.split;
p words
words[0].downcase!
words.last.upcase!
words[3].capitalize!
words << "and"
words << "very"
words << "easy to understand"

p words
puts words.count
puts words.last
puts words.first

words.each {|w| puts w}


#hashes
instruments = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'string',
    'oboe' => 'woodwind',
    'trumpet' => 'brass',
    'violin' => 'string'
}
p instruments

instruments["guitar"] = "string"
instruments['drums'] = 'percussion'
p instruments
puts instruments['oboe']
puts instruments['piano']

histogram = Hash.new(0)  #argument is important: default value for non-key lookups
p histogram
histogram["key1"] += 1  # try this when instantiating the histogram as Hash.new (without 0 as default param)
p histogram

#regex
r1 = /ruby/  # matches all strings containing ruby
str = "I love Ruby!"; puts "#{str} matches" if r1 =~ str.downcase
str = "I love Java!"; puts "#{str} does not match" unless r1 =~ str.downcase

r2 = /^a/  #matches all strings starting with a
r3 = /s$/  #matches all strings ending in s
r4 = /^a.*s$/  #matches all strings starting with a, followed by 0 or more characters and ending in s
r5 = /^a.+s$/  #matches all strings starting with a, followed by at least one character and ending in s
r6 = /^a.*\d+.*s$/  #matches all strings starting with a, followed by any string which has at least one digit, and ending in s



