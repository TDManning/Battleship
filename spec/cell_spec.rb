require 'spec_helper'

RSpec.describe Cell do
    before(:each) do
        @cell = Cell.new("B4")
        @cruiser = Ship.new("Cruiser", 3)
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@cell).to be_an_instance_of(Cell)
        end
        it 'has a coodinate' do
            expect(@cell.coordinate).to eq("B4")
        end
        it 'has a ship' do
            expect(@cell.ship).to eq(nil)
        end
    end

    describe '#empty?' do
        it 'has no ship' do
            expect(@cell.empty?).to eq(true)
        end
        it 'has a ship' do
            @cell.place_ship(@cruiser)
            expect(@cell.empty?).to eq(false)
        end
    end

    describe '#place_ship' do
        it 'places the ship in the cell' do
            expect(@cell.empty?).to eq(true)
            @cell.place_ship(@cruiser)
            expect(@cell.empty?).to eq(false)
            expect(@cell.ship).to eq(@cruiser)
        end
    end
end