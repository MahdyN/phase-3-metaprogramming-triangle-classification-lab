class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize side_one, side_two, side_three

      @side_one = side_one
      @side_two = side_two
      @side_three = side_three

  end

  def kind 
    
    raise TriangleError unless self.sides_positive? && self.no_inequality?

    if @side_one == @side_two && @side_two == @side_three
        :equilateral
    elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
        :isosceles
    else
        :scalene
    end

  end

  def sides_positive?

    [@side_one, @side_two, @side_three].all? { |side| side > 0 }

  end

  def no_inequality?

      @side_one + @side_two > @side_three && @side_two + @side_three > @side_one && @side_one + @side_three > @side_two

  end

class TriangleError < StandardError

    def message
        "Entered Triangle Sides Are Not Valid"
    end

end



end
