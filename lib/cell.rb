class Cell

  attr_reader  :coordinate, :ship

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
    @fired_upon = false
  end

  def empty?
    if @ship == nil 
      true
    else 
      false
    end
  end

  def place_ship(cruiser)
    @ship = cruiser
  end
  
  def fire_upon
    @fired_upon = true
    if @ship != nil
      @ship.hit
    end
  end

  def fired_upon?
    @fired_upon
  end

#   def render(optional = nil)
#     # require 'pry'; binding.pry
#     if optional == true
#         "S"
#     elsif @fired_upon == true
#         "M"
#     else
#         "."
#     end
#   end



end 