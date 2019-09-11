class Logic
  def initialize
    @board =(1..9).to_a 
  end 

  def display
    (1..9).each do |i|
      print " | " + @board[i - 1].to_s
      if i % 3 == 0 
        print " | \n" 
      end 
    end
  end

  def start_game
    puts " Welcome to tic-tac-toe"
    puts "Input name: " 
    player_1 = gets.chomp.capitalize
    puts "#{player_1} is x"
    puts "Input name: " 
    player_2 = gets.chomp.capitalize
    puts "#{player_2} is o"
    puts "Lets play; #{player_1} [x], choose  a number btn 1-9: "
    puts "                                                      "
  end
end
game = Logic.new
game.start_game
game.display
 

 
 
 

