require('rspec')
require('triangles')


describe('String#triangles') do
  it("determines if all triangle sides are equal") do
    equilateral_triangle = Triangles.new(3,3,3)
    expect(equilateral_triangle.equilateral?()).to(eq(true))
  end

  it("determines if two sides of triangle are equal") do
    isosceles_triangle = Triangles.new(4,4,5)
    expect(isosceles_triangle.isosceles?()).to(eq(true))
  end
  it('determines if no sides of triangle are equal') do
    scalene_triangle = Triangles.new(3,4,5)
    expect(scalene_triangle.scalene?()).to(eq(true))
  end
end
