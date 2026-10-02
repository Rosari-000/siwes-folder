require 'yaml'

words = File.readlines("google-10000-english-no-swears.txt", chomp: true)
secret = words.select { |w| w.length.between?(5, 12) }.sample

guesses = Array.new(secret.length, "_")
wrong = []
turns = 6

loop do
  puts "\nWord: #{guesses.join(" ")}"
  puts "Wrong: #{wrong.join(", ")}"
  puts "Turns left: #{turns}"
  print "Guess a letter or type 'save': "
  input = gets.chomp.downcase

  if input == "save"
    File.write("hangman_save.yml", YAML.dump([secret, guesses, wrong, turns]))
    puts "Game saved!"
    break
  end

  if secret.include?(input)
    secret.chars.each_with_index { |c, i| guesses[i] = c if c == input }
  else
    wrong << input unless wrong.include?(input)
    turns -= 1
  end

  if !guesses.include?("_")
    puts "🎉 You win! The word was '#{secret}'"
    break
  elsif turns <= 0
    puts "💀 You lose! The word was '#{secret}'"
    break
  end
end
