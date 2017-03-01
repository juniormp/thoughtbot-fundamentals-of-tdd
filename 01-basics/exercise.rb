require "rspec/autorun"

class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
  	if @middle_name.nil?
  		@first_name + " " + @last_name
  	else
  		@first_name + " " + @middle_name + " " + @last_name	
  	end
  end

  def full_name_with_middle_initial
  	if @middle_name.nil?
  		@first_name + " " + @last_name
  	else
  		@first_name + " " + @middle_name[0].upcase + " " + @last_name	
  	end
  end

  def full_name_with_initials
  	if @middle_name.nil?
  		@first_name + " " + @last_name
  	else
  		@first_name[0].upcase + " " + @middle_name[0].upcase + " " + @last_name[0].upcase
  	end
  end
end

describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
    	person = Person.new(first_name: "Mauricio", middle_name: "Pereira", last_name: "Junior")

    	expect(person.full_name).to eq("Mauricio Pereira Junior")
    end
    
    it "does not add extra spaces if middle name is missing" do
		person = Person.new(first_name: "Mauricio", middle_name: nil, last_name: "Junior")

		expect(person.full_name).to eq("Mauricio Junior")
	end
  end

  describe "#full_name_with_middle_initial" do
  	it "concatenates first name, middle name only the first initial, and last name with spaces" do
  		person = Person.new(first_name: "Mauricio", middle_name: "Pereira", last_name: "Junior")

  		expect(person.full_name_with_middle_initial).to eq("Mauricio P Junior")
  	end
  end

  describe "full_name_with_initials" do
  	it "concatenates first name, middle name o, and last name initials with spaces" do
  		person = Person.new(first_name: "Mauricio", middle_name: "Pereira", last_name: "Junior")

  		expect(person.full_name_with_initials).to eq("M P J")
  	end
  end
end