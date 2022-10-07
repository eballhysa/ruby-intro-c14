# input: array of (non-standard) lines
# returns: array of (standardized words): punctuation removed, downcased
def standardize(lines)
  lines_no_punct = lines.map { |line| line.gsub(/[^a-z0-9\s]/i, '') }

  words = lines_no_punct.map { |line| line.split }.flatten
  # equivalent to: words = lines_no_punct.map(&:split).flatten
  standardized_words = words.map { | word| word.downcase }
  # equivalent to: standardized_words = words.map(&:downcase)
end

def histogram_of(filename)
  lines = File.open(filename).readlines
  words = standardize lines

  histogram = Hash.new(0)
  words.each { |word| histogram[word] += 1 }
  histogram
end

=begin
hist = histogram('camus.txt')
# hist.to_a returns an array of n elements where
#   n is size of histogram and
#   each element is an array of two elements, the key (0) and the value (1)

hist.to_a
    .sort { |x, y| y[1] <=> x[1] }
    .each { |el| puts "count[#{el[0]}] = #{el[1]}" }
=end
def top_words(filename, n=5)
  hist = histogram_of filename

  sorted_words = hist.to_a
                     .sort { |x, y| y[1] <=> x[1] }
                     .map { |entry| entry[0] }
  sorted_words[0..n-1]
end

p top_words 'data/camus.txt', 20