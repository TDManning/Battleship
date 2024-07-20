require 'spec_helper'

RSpec.describe Board do
    before(:each) do
        @board = Board.new
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@board.cells).to be_a(Hash)
            expect(@board.cells.count).to eq(16)
        end
    end

    describe '#valid_coordinate?' do
        it 'can tell us if it is a valid coordinate' do
            expect(@board.valid_coordinate?("A1")).to eq(true)
            expect(@board.valid_coordinate?("A5")).to eq(false)
            expect(@board.valid_coordinate?("D4")).to eq(true)
            expect(@board.valid_coordinate?("E1")).to eq(false)
        end
    end
end