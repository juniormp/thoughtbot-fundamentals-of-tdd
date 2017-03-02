require "rspec/autorun"

describe UnitConverter do
  describe "#convert" do
    it "translates between objects of the same dimension" do
      converter = UnitConverter.new(2, :cup, :liter)

      expect(converter.convert).to be_within(0.001).of(0.473176)
    end

# "xit" pending
    xit "raises an error if the objects are of differing dimensions" do
      converter = UnitConverter.new(2, :cup, :grams)

      expect { converter.convert }.to raise_error(DimensionalMismatchError)
    end
  end
end

# A good test suite gives you fantastic leverage when you want to perform a refactoring. 
# With tests in place, you can make changes to your code with the assurance that your intended functionality continues to work after your work is completed, 
# protecting against regressions. Without a test suite, refactorings are much riskier, as each change may introduce subtle bugs, particularly ones that have 
# already been fixed in previous revisions.