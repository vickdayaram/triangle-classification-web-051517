

class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @total = side1 + side2 + side3
    @side12 = side1 + side2
    @side23 = side2 + side3
    @side13 = side1 + side3
  end

  def kind
     if @side1 == @side2 && @side2 == @side3 && @side1 == @side3 && (@side1 > 0 && @side2 > 0 && @side3 > 0) && (@side12 > @side3 && @side23 > @side1 && @side13 > @side2)
       :equilateral
     elsif (@side1 == @side2 || @side2 == @side3 || @side1 == @side3) && (@side1 > 0 && @side2 > 0 && @side3 > 0) && (@side12 > @side3 && @side23 > @side1 && @side13 > @side2)
       :isosceles
     elsif (@side1 != @side2 && @side2 != @side3 && @side1 != @side3) && (@side1 > 0 && @side2 > 0 && @side3 > 0) && (@side12 > @side3 && @side23 > @side1 && @side13 > @side2)
       :scalene
     else
       begin
       raise TriangleError
       end
     end
  end
end

class TriangleError < StandardError
  def self.message
    "Illegal Triangle!"
  end
end
