class Board

    attr_reader :cells

    def initialize
        @cells = {
            "A1" => nil,
            "A2" => nil,
            "A3" => nil,
            "A4" => nil,
            "B1" => nil,
            "B2" => nil,
            "B3" => nil,
            "B4" => nil,
            "C1" => nil,
            "C2" => nil,
            "C3" => nil,
            "C4" => nil,
            "D1" => nil,
            "D2" => nil,
            "D3" => nil,
            "D4" => nil
        }
    end

    def valid_coordinate?(coordinate)
        if @cells.include?(coordinate)
            true
        else
            false
        end
    end

    def valid_placement?(ship_name, desired_coordinates)
       desired_coordinates.length == ship_name.length
    end

end