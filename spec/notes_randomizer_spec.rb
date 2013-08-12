require 'spec_helper'
require 'notes_randomizer'

describe "NotesRandomizer tests" do
	include NotesRandomizer
	include ApplicationHelper

	describe '- #get_random_values' do

		before do
			putsd
		end

		describe '- should raise error when number of values is less than 4' do
	
			(0..3).each do |count|

				it "- when count is #{count}" do
					expect{get_random_values(count)}.to raise_error(ArgumentError)
				end
			end
		end

		it '- should not raise error when number of values is 4' do
			expect{get_random_values(4)}.to_not raise_error(ArgumentError)
		end

		# since we're testing code that by its nature behaves randomly, let's run all the following tests
		# multiple times, getting various number of items. This increases the odds we'll catch errors
		# that only occur in certain scenarios, based on the randomness of the method.

		[4, 9, 10, 12, 27].each do |count|

			describe "- when count is #{count}" do

				it "- should return an array" do
					vals = get_random_values(count)
					putsd "returned: #{vals.inspect}"
					vals.should be_an(Array)
				end

				it "- should not have any nils" do
					vals = get_random_values(count)
					putsd "returned: #{vals.inspect}"
					vals.should_not include(nil)
				end

				it "- should only have numbers" do
					vals = get_random_values(count)
					putsd "returned: #{vals.inspect}"

					vals.each do |n|
						n.should be_an(Integer)
					end
				end

				it " - length should be #{count}" do
					vals = get_random_values(count)
					putsd "returned: #{vals.inspect}"
					vals.length.should == count
				end

				it "- should only have values between 1 and #{count}" do
					vals = get_random_values(count)
					putsd "returned: #{vals.inspect}"

					vals.sort.should == (1..count).to_a
				end

				it "- adjacent numbers should not be consecutive" do
					
					vals = get_random_values(count)

					for n in 1..vals.length - 1
						# difference between adjacent values should be > 1
						diff = vals[n] - vals[n - 1]
						diff.abs.should be > 1
					end
				end
			end
		end
	end

	describe '- #array_values_are_consecutive_integers' do

		it '- should not be consecutive' do
			array_values_are_consecutive_integers([2, 4, 5, 6, 7]).should == false
		end

		it '- should be consecutive with 3 items in order' do
			array_values_are_consecutive_integers([2, 3, 4]).should == true
		end

		it '- should be consecutive with 3 items out of order' do
			array_values_are_consecutive_integers([4, 2, 3]).should == true
		end

		it '- should be consecutive with 12 items in order' do
			vals = (1..12).to_a
			array_values_are_consecutive_integers(vals).should == true
		end

		it '- should be consecutive with 12 items out of order' do
			vals = (1..12).to_a.shuffle
			array_values_are_consecutive_integers(vals).should == true
		end

		it '- empty array should return false' do
			array_values_are_consecutive_integers([]).should == false
		end

		it '- array with 1 integer should return false' do
			array_values_are_consecutive_integers([1]).should == false
		end

		it '- array with 1 nil should return false' do
			array_values_are_consecutive_integers([nil]).should == false
		end

		it '- array with integers and nils should return false' do
			array_values_are_consecutive_integers([23, 127, nil, 0, nil, 3]).should == false
		end
	end
end