class BeerClub < ActiveRecord::Base
  has_many :memberships

  def to_s
    name.to_s
  end
end
