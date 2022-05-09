class Triangle
  attr_reader :side1, :side2, :side3
  @@triangles = {}

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def self.all
    @@triangles.values()
  end
  
  def is_triangle?
    if @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2
      false
    else  
      true
    end
  end

  def triangle_type
    output = ''
    if is_triangle? == false
      output = "not a triangle"
    elsif @side1 == @side2 && @side2 == @side3 
      output =  "Equilateral"
    elsif @side1 == @side2 && @side2 != @side3 || @side3 == @side2 && @side2 != @side1 || @side1 == @side3 && @side3 != @side2
      output =  "Isosceles"
    elsif @side1 != @side2 && @side2 != @side3 || @side3 != @side2 && @side2 != @side1 
      output =  "Scalene"
    end
    output
  end
end

