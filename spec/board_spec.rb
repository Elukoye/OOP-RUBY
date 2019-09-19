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
    
end

