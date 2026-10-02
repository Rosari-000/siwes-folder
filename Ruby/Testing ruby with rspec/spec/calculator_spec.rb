require_relative '../lib/calculator'
RSpec.describe Calculator do
  let(:calculator) { Calculator.new} # describing a variable
  describe ".add" do
    it "returns the sum of two numbers" do
      #calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
  end
   
  describe ".multiply" do
    it "returns the multiplication of two numbers" do
      #calculator = Calculator.new
      expect(calculator.multiply(7,6)).to eql(42)
    end
    it "returns only multiplied values not added values" do
      #calculator = Calculator.new
      expect(calculator.multiply(7,1)).not_to eql(8)
      expect(calculator.multiply(7,1)).to eql(7)
    end
  end
end