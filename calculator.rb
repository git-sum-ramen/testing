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

  def sqaure(number)
    return square * square
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
      # ...
    end
  end
end