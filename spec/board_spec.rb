require_relative '../lib/board.rb'
RSpec.describe Board do
    let(:board){Board.new}
    describe '#display' do
        it 'it displays the board' do
            expect(board.display).to eq(1..9)
        end
    end

    describe '#position_taken?' do 
        it 'checks if there is space on the board' do
          expect(board.position_taken?(1)).to eql(false)
        end 
    end
    
    describe '#win?' do
        it 'checks for no win on board' do
          expect(board.win?).to be false
        end
    
        it 'checks for win on board' do
          board.replace_var(0,"x")
          board.replace_var(1,"x")
          board.replace_var(2,"x")
          expect(board.win?).to eql(true)
        end
      end

      describe '#full?' do
        it 'checks if board is not full' do
         expect(board.full?).to eql(false)
       end 

       it 'checks if board is full' do 
         board.replace_var(0,"x")
         board.replace_var(1,"o")
         board.replace_var(2,"x")
         board.replace_var(3,"o")
         board.replace_var(4,"x")
         board.replace_var(5,"o")
         board.replace_var(6,"x")
         board.replace_var(7,"o")
         board.replace_var(8,"x")
         expect(board.board).to eql(["x", "o", "x", "o", "x", "o", "x", "o", "x"])
       end
     end 
end

