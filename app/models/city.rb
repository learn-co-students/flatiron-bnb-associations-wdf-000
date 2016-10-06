class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings
  has_many :listings, :through => :neighborhoods
end
