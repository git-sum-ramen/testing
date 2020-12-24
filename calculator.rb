class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

calculator = Calculator.new

# p calculator.add(4, 7)
# driver code

# calculator = Calculator.new
# if calculator.add(5,8) == 13
#   p "test passes"
# else
#   p "test fails"
# end

# WHY WOULD ANYONE USE RSPEC?

# gem install rspec
# rspec calculator.rb

RSpec.describe Calculator do
  describe "#add" do
    it 'will return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(3,1)
      expect(result).to eq(4)
    end

    it 'will return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-3,-1)
      expect(result).to eq(-4)
    end
  end

  describe "#subtract" do
    it 'will return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(10, 5)
      expect(result).to eq(5)
    end
  end

  describe "#multiply" do
    it 'will return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(6, 7)
      expect(result).to eq(42)
    end
  end

  describe "#divide" do
    it 'will return the quotient of the two numbers' do
      calculator = Calculator.new
      result = calculator.divide(100, 5)
      expect(result).to eq(20)
    end
  end

  describe "#square" do
    it 'will return the square two numbers' do
      calculator = Calculator.new
      result = calculator.square(6)
      expect(result).to eq(36)
    end
  end

  describe '#power' do
    it 'will return the power of two numbers' do
      calculator = Calculator.new
      result = calculator.power(2, 3)
      expect(result).to eq(8)
    end
  end
end