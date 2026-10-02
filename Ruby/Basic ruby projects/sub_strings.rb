def substrings(string, dictionary)
  result = Hash.new(0)

  words = string.downcase.split(/[^a-z']+/).reject(&:empty?)
 
dictionary.each do |sub|
  words.each do |word| 
    result[sub] += 1 if word.include?(sub.downcase)
  end
end
 
  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it","i","low","own","part","partern","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)