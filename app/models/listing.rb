class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :cities, through: :neighborhood
  belongs_to :host, class_name: "User"
  has_many :reservations
  has_many :guests, through: :reservations
  has_many :reviews, through: :reservations
end