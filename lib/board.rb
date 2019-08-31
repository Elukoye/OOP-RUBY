class Board
    def initialize
      @board =(1..9).to_a
      @remval=(1..9).to_a
      @winner = nil
      @piece = ["x","o"]
    end
    def replace_var(position,token)
      @remval.delete(@board[position])
      @board[position] = token
    end
    def rem_nums
      return @remval
    end
    def display
      (1..9).each do |i|
        print " | " + @board[i - 1].to_s
        if i % 3 == 0
          print " | \n"
        end
      end
    end
  def position_taken?(position)
    @board[position - 1] == "x" || @board[position - 1] == "o"
  end
  def win?
    bool_value = false
    win_combination = [
      #vertical
     [0,1,2],[3,4,5],[6,7,8],
     #horizontal
     [0,3,6],[1,4,7],[2,5,8],
     #diagonal
     [0,4,8],[2,4,6]
    ]
    win_combination.each{ |element|
     bool_value = [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "x" } || [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "o" }
     if bool_value
      @winner = @board[element[0]]
     end
      break  if bool_value
    }
      return bool_value
  end
   def winner
     @winner
   end
   def full?
    @board.all?{|token| token == "x" || token =="o"}
   end
 end 



 
 class Logic
  def initialize
    @player_1 = "player_1"
    @player_2 = "player_2"
    @board = Board.new
  end
  def game_start
    puts "Welcome to TIC-TAC-TOE"
    puts " Player one input name: "
    @player_1 = gets.chomp.capitalize + " [x]"
    puts "#{@player_1} is  x"
    puts "Player two input name: "
    @player_2 = gets.chomp.capitalize + " [o]"
   puts "#{@player_2} is  o"
  end
  def take_turns(current_player)
      puts "#{current_player} ,choose one among #{@board.rem_nums}: "
      position = gets.chomp.to_i
      while true do
        if  position.between?(1,9) && !@board.position_taken?(position)
        position -= 1
        break
        else
        puts "Invalid move or input.\n try again: "
        position = gets.chomp.to_i
        end
      end
      if current_player == @player_1
      @board.replace_var(position,"x")
      else
      @board.replace_var(position,"o")
      end
      @board.display
  end
  def switchplayer(c_p)
    returnvar=''
    if   c_p == @player_1
        returnvar = @player_2
    else
        returnvar = @player_1
    end
    return returnvar
  end
  def game_loop
    game_start
    c_player = @player_2
    until false do
       c_player = switchplayer(c_player)
       take_turns(c_player)
       break if @board.win? || @board.full?
    end
     winner = @board.winner
     mshindi =''
     if winner == nil
      puts " Damn ,its a draw!!... PLAY AGAIN?"
     elsif
      if winner == "x"
        mshindi=@player_1
      else  winner == "o"
        mshindi=@player_2
      end
      puts "Congrats #{mshindi} , YOU WON!"
     end
  end
end