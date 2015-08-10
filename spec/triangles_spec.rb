require('rspec')
require('triangles')


describe('String#triangles') do
  it("determines if all triangle sides are equal") do
    equilateral_triangle = Triangles.new(3,3,3)
    expect(equilateral_triangle.equilateral?()).to(eq(true))
  end
end
