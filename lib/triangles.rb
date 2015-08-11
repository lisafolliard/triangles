class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:equilateral?) do
    if @side1.eql?(@side2) && @side1.eql?(@side3)
      "The triangle is equilateral"
    end
  end

  define_method(:isosceles?) do
    @side1.eql?(@side2) || @side1.eql?(@side3) || @side2.eql?(@side3)
  end

  define_method(:scalene?) do
   @side1 != @side2 && @side1 != @side3 && @side2 != @side3
  end

  define_method(:non_triangle?) do
    @side1.+(@side2) <= (@side3) || @side2.+(@side3) <= (@side1) || @side3.+(@side1) <= (@side2)
  end
end
