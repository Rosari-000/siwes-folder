def caesar_cipher(string, shift)
  result = ""

  string.each_char do |letter|
    if letter.match?(/[a-z]/)
      result += ((letter.ord - "a".ord + shift) % 26 + "a".ord).chr
    elsif letter.match?(/[A-Z]/)
      result += ((letter.ord - "A".ord + shift) % 26 + "A".ord).chr
    else
      result += letter
    end
  end

  result
end

puts caesar_cipher("What a string!", 5)