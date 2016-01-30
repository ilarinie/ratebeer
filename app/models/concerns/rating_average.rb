module RatingAverage
  extend ActiveSupport::Concern
	def average_rating
		avg = 0
		self.ratings.each do |rating|
			avg += rating.score
		end
		avg.to_f / self.ratings.count
	end
end