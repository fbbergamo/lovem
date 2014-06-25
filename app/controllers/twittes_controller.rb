class TwittesController < ApplicationController

	def search
		@twittes = TwitterData.new(params[:q])
		respond_to do |format|
			format.html
			format.js
		end
	end

	def index
	end
end
