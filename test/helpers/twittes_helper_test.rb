require 'test_helper'

class TwittesHelperTest < ActionView::TestCase

	test "distance_of_time_in_words_or_absolute 2 days" do 
		date = 3.days.ago
		assert_match date.strftime("%B"), distance_of_time_in_words_or_absolute(date)
	end

	test "distance_of_time_in_words_or_absolute less 2 days" do 
		date = 5.minutes.ago
		assert_match /5/, distance_of_time_in_words_or_absolute(date)
	end

	test "user location" do
		user = stub(location: "osasco")
		assert_match /osasco/, user_location(user)
	end

	test "user nil location" do
		user = stub(location: "")
		assert_nil user_location(user)
	end
end
