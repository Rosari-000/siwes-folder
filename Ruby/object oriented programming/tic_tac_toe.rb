board = Array.new(9)

def display(board)
  puts
  puts " #{board[0] || 1} | #{board[1] || 2} | #{board[2] || 3} "
  puts "---+---+---"
  puts " #{board[3] || 4} | #{board[4] || 5} | #{board[5] || 6} "
  puts "---+---+---"
  puts " #{board[6] || 7} | #{board[7] || 8} | #{board[8] || 9} "
  puts
end

def winner?(board)
  lines = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  lines.any? { |a, b, c| board[a] && board[a] == board[b] && board[b] == board[c] }
end

player = "X"

until winner?(board) || board.all?
  display(board)
  print "#{player}, pick a spot (1-9): "
  pos = gets.chomp.to_i - 1

  if pos.between?(0, 8) && board[pos].nil?
    board[pos] = player
    player = player == "X" ? "O" : "X"
  else
    puts "Invalid spot, try again."
  end
end

display(board)
puts winner?(board) ? "#{player == "X" ? "O" : "X"} wins!" : "It's a draw!"
