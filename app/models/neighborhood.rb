class Neighborhood < ActiveRecord::Base

  belongs_to :city, :foreign_key => 'city_id'
  has_many :listings

end
