#Definition

# What is Rspec

# Package
1. rspec - core
2. rspec - expectations
3. rspec - mocks
4.  rspec - supports
5. Rspec


# Basic Syntax
RSpec.describe Calculator do
  describe ".add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
  end
end

# Refractor Cyle in Action

# Red (Failing Test)
NameError: uninitialized constant Calculator

# Green ( Passing test)
class Calculator
  def add(a, b)
    a + b
  end
end

# Refractor