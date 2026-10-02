class Mastermind
  COLORS = %w[red blue green yellow]

  def initialize
    @secret = Array.new(4) { COLORS.sample } # computer picks 4 random colors
    @turns = 6 # fewer turns for simplicity
  end

  def play
    puts "Welcome to Mastermind!"
    puts "Available colors: #{COLORS.join(', ')}"
    puts "Guess the 4-color code. You have #{@turns} turns."

    @turns.times do |turn|
      print "Turn #{turn + 1}: "
      guess = gets.chomp.downcase.split

      if guess.size != 4 || !guess.all? { |c| COLORS.include?(c) }
        puts "Invalid guess. Try again."
        redo
      end

      exact, partial = feedback(guess)
      puts "Feedback: #{exact} exact, #{partial} partial"

      if exact == 4
        puts "🎉 You win!"
        return
      end
    end

    puts "Out of turns! The code was #{@secret.join(', ')}"
  end

  private

  def feedback(guess)
    exact = guess.each_index.count { |i| guess[i] == @secret[i] }
    partial = (guess & @secret).sum { |c| [guess.count(c), @secret.count(c)].min } - exact
    [exact, partial]
  end
end

Mastermind.new.play
