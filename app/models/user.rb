class User < ActiveRecord::Base
	include RatingAverage
	
	has_secure_password
	
	validates :username, uniqueness: true,
									length: { minimum: 3}
									
									
	validates_format_of :password, :with => /(?=.*[A-Z])(?=.{4,}).+/, :on => :create
	
	has_many :ratings, dependent: :destroy
	has_many :beers, through: :ratings
	has_many :memberships, dependent: :destroy
	has_many :beer_clubs, through: :memberships
	
	def to_s
		"#{username}"
	end
end
