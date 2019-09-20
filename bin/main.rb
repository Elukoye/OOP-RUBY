require_relative'../lib/board.rb'

def game_start
  puts "Welcome to TIC-TAC-TOE"
  puts " Player one input name: "
  @player_1 = gets.chomp.capitalize + " [x]"
  puts "#{@player_1} is  x"
  puts "Player two input name: "
  @player_2 = gets.chomp.capitalize + " [o]"
<<<<<<< HEAD
 puts "#{@player_2} is  o"
end

def take_turns(current_player)     
    puts "#{current_player} ,choose one among #{@board.rem_nums}: " 
    position = gets.chomp.to_i
  
    while true do
      if  position.between?(1,9) && !@board.position_taken?(position)
=======
  puts "#{@player_2} is  o"
end

def take_turns(current_player)     
  puts "#{current_player} ,choose one among #{@board.rem_nums}: " 
  position = gets.chomp.to_i

  while true do
    if  position.between?(1,9) && !@board.position_taken?(position)
>>>>>>> 7e7617147ef7f8c4c3d8312e1387f1b9a6bcbdea
      position -= 1 
      break
      else        
      puts "Invalid move or input.\n try again: "
      position = gets.chomp.to_i
      end
    end
<<<<<<< HEAD

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

public
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
    else 
      mshindi=@player_2
    end
    puts "Congrats #{mshindi} , YOU WON!"
   end
end

game=Logic.new
game.game_loop

 
=======

    if current_player == @player_1 
    @board.replace_var(position,"x")
    else
    @board.replace_var(position,"o")
  end
    @board.display
end 

def switchplayer(c_p)
  returnvar=''
  if c_p == @player_1
    returnvar = @player_2
  else
    returnvar = @player_1
  end
  return returnvar
end 
>>>>>>> 7e7617147ef7f8c4c3d8312e1387f1b9a6bcbdea

public
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
    else 
      mshindi=@player_2
    end
    puts "Congrats #{mshindi} , YOU WON!"
  end
end

<<<<<<< HEAD

=======
game=Logic.new
game.game_loop
>>>>>>> 7e7617147ef7f8c4c3d8312e1387f1b9a6bcbdea
