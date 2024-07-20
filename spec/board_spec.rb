require 'spec_helper'

RSpec.describe Board do
    before(:each) do
        @board = Board.new
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@board.cells).to be_a(Hash)
        end
    end
end