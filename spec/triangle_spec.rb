require 'pry'
require 'rspec'
require 'triangle'

describe '#triangle' do
  describe '#is_triangle?' do
    it('will determine if three integers make a triangle') do
      shape = Triangle.new(3, 3, 3)
      expect(shape.is_triangle?).to(eq(true)) 
    end
  end
  
  describe '#triangle_type' do
    it('will determine if the triangle is equilateal') do
      shape = Triangle.new(3, 3, 3)
      expect(shape.triangle_type).to(eq("Equilateral"))
    end
    it('will determine if the triangle is isosceles') do
      shape = Triangle.new(3, 4, 3)
      expect(shape.triangle_type).to(eq("Isosceles"))
    end
    it('will determine if the triangle is scalene') do
      shape = Triangle.new(3, 4, 5)
      expect(shape.triangle_type).to(eq("Scalene"))
    end
    it('will determine if the triangle is not a triangle') do
      shape = Triangle.new(3, 13, 3)
      expect(shape.triangle_type).to(eq("not a triangle"))
    end
  end
end