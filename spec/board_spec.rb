require_relative '../lib/board.rb'
RSpec.describe Board do
    let(:board){Board.new}
    describe '#display' do
        it 'it displays the board' do
            expect(board.display).to eq(1..9)
        end
    end
end

