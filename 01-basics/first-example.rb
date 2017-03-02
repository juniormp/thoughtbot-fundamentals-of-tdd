require "rspec/autorun"

#Benefits of TDD:
#suite of regression tests (easier changes)
#positive design pressure
#workflow benefit of tackling problem is small steps

class Calculator
	def add(a, b)
		a + b
	end
	def factorial(n)
		if n == 0
			1
		else
			n * factorial(n - 1)
		end
	end
end

describe Calculator do
  describe "#add" do
    it "adds two numbers" do
      calculator = Calculator.new

      expect(calculator.add(1, 1)).to eq(2)
    end
  end
end

describe "#factorial" do
	it "returns 1 when given 0 (0! = 1)" do
		calc = calculator.new
	
		expect(calc.factorial(0)).to eq(1)
	end

	it "returns 120 when gives 5 (5! = 120)" do
		calc = calculator.new
		
		expect(calc.factorial(5).to eq(120))
	end
end
	
