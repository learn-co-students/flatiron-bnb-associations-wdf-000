class Neighborhood < ActiveRecord::Base
  belongs_to :city # fk :city_id
  has_many :listings
end
