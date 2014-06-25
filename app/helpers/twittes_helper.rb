module TwittesHelper
	def distance_of_time_in_words_or_absolute(date)
		if 2.days.ago < date
			time_ago_in_words date
		else
			l date, format: :short_date
		end
	end


	def user_location(user)
		if user.location.present?
			content_tag :p do
		      "Location: #{user.location}"
		    end
		end
	end

end
