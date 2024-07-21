class Board

    attr_reader :cells

    def initialize
        @cells = {
            "A1" => Cell.new("A1"),
            "A2" => Cell.new("A2"),
            "A3" => Cell.new("A3"),
            "A4" => Cell.new("A4"),
            "B1" => Cell.new("B1"),
            "B2" => Cell.new("B2"),
            "B3" => Cell.new("B3"),
            "B4" => Cell.new("B4"),
            "C1" => Cell.new("C1"),
            "C2" => Cell.new("C2"),
            "C3" => Cell.new("C3"),
            "C4" => Cell.new("C4"),
            "D1" => Cell.new("D1"),
            "D2" => Cell.new("D2"),
            "D3" => Cell.new("D3"),
            "D4" => Cell.new("D4")
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
        cell_keys = @cells.keys
        result = false
        
        if desired_coordinates.length == ship_name.length
            result = true
        end

       


       
        horizontal = letter_check?(desired_coordinates)
        vertical = number_check?(desired_coordinates)
        # require 'pry'; binding.pry

        if  horizontal && vertical
            result = true
        else
            result = false
        end
       
        


    

        return result
    end

    def letter_check?(desired_coordinates)
        verify = false
        char_to_check = desired_coordinates[0][0]

        desired_coordinates.each do |coord|
            # require 'pry'; binding.pry
            if coord[0] == char_to_check
                verify = true
            else
                verify = false
                break
            end
        end
        # require 'pry'; binding.pry

       return verify
    end

    
    def number_check?(desired_coordinates)
        verify = false
        num_to_check = desired_coordinates[0][1].to_i
        desired_coordinates.shift

        desired_coordinates.each do |coord|
            x = coord[1].to_i == (num_to_check + 1)
            # require 'pry'; binding.pry
            if x
                verify = true
                num_to_check = coord[1].to_i
            else
                verify = false
                break
            end
        end
        # require 'pry'; binding.pry
        return verify
    end
end