=begin
Walter Schlosser
CSCI446 - Unit 9

The following is a demo of basic RSpec features
=end

require './classDefs.rb'

# ---BASIC STRUCTURE FOR RSPEC---

# Open a group for the HelpfulArrayCalculations class
RSpec.describe HelpfulArrayCalculations do
	# Open a context - a situation that class is in
	context "when passed an array of numbers 1 to 5 inclusive" do
		# Describe examples - what the class should do
		it "should have a max of five" do
			# use expect to check if correct functionality,
			# similar to assert in a TDD environment
			instance = HelpfulArrayCalculations.new [1,2,3,4,5]
			expect(instance.max).to eq(5)
		end

		it "should have a min of one" do
			instance = HelpfulArrayCalculations.new [1,2,3,4,5]
			expect(instance.min).to eq(1)
		end

		it "should have a sum of 15" do
			instance = HelpfulArrayCalculations.new [1,2,3,4,5]
			expect(instance.sum).to eq(15)
		end

		it "should have an average of 3" do
			instance = HelpfulArrayCalculations.new [1,2,3,4,5]
			expect(instance.avg).to eq(3)
		end

		# be_falsey and be_truthy are used for bool tests
		it "should say it has no negatives" do
			instance = HelpfulArrayCalculations.new [1,2,3,4,5]
			expect(instance.hasNegatives?).to be_falsey
		end

		it "should say it has values" do
			instance = HelpfulArrayCalculations.new [1,2,3,4,5]
			expect(instance.hasValues?).to be_truthy
		end
	end

	# Open another context for a different situation
	context "when passed an empty array" do
		it "should have a max of zero" do
			instance = HelpfulArrayCalculations.new []
			expect(instance.max).to eq(0)
		end

		it "should have a min of zero" do
			instance = HelpfulArrayCalculations.new []
			expect(instance.min).to eq(0)
		end

		it "should have a sum of zero" do
			instance = HelpfulArrayCalculations.new []
			expect(instance.sum).to eq(0)
		end

		# This one will fail since divide by length of zero is not handled
		it "should have an average of zero" do
			instance = HelpfulArrayCalculations.new []
			expect(instance.avg).to eq(0)
		end

		it "should say it has no negatives" do
			# This is an explicitly pending test, it hasn't been written yet
			pending "Test has not been written"
			# make sure to fail this test
			fail
		end

		it "should say it has no values" do
			instance = HelpfulArrayCalculations.new []
			expect(instance.hasValues?).to be_falsey
		end
	end
end



# ---USING BEFORE HOOK AND SUBJECT HELPER TO SIMPLIFY---



# We configure the hooks beforehand since we want filters
RSpec.configure do |config|
	# setup before every example with the correct :size hash is passed
	config.before(:example, :size => :empty) do
		# we use the helper subject to refer to a new instance of the class
		# passed in the first RSpec.describe line
		@instance = subject
	end

	# setup before every context with the correct :size hash
	config.before(:context, :size => :not_empty) do
		# We can also just create the instance like normal
		@instance = HelpfulArrayCalculations.new [1,2,3,4,5]
	end
end

RSpec.describe HelpfulArrayCalculations do
	# Pass the filter hash as the second arg to the context setup
	context "when passed an array of numbers 1 to 5 inclusive", :size => :not_empty do
		it "should have a max of five" do
			expect(@instance.max).to eq(5)
		end

		it "should have a min of one" do
			expect(@instance.min).to eq(1)
		end
	end

	# The before example is invoked by passing the hash to each example call
	context "when passed an empty array" do
		it "should have a max of zero", :size => :empty do
			expect(@instance.max).to eq(0)
		end

		it "should have a min of zero", :size => :empty do
			expect(@instance.min).to eq(0)
		end
	end
end



# ---SHARED EXAMPLES---



# We define a set of examples that multiple classes should satisfy first
# This is similar to defining how any class of a certain interface should behave
RSpec.shared_examples "a comparable" do
	# The let helper takes a symbol and block to define it so we can
	# use that symbol as a variable in the examples
	# The described_class helper lets us reference the class that is
	# described by these examples so we can create an instance
	let(:object1) { described_class.new "Steven", 12345 }
	let(:object2) { described_class.new "Albert", 67891 }

	# Define context and example like usual
	context "the left object has a lower numeric value" do
		it "should return true for less than" do
			expect(object1 < object2).to be_truthy
		end

		it "should return false for greater than" do
			expect(object1 > object2).to be_falsey
		end
	end
end

# We can now use the helper 'it_behaves_like' to include all of our
# defined examples for comparable classes
RSpec.describe Student do
	it_behaves_like "a comparable"
end

RSpec.describe Person do
	it_behaves_like "a comparable"
end