class Listing < ActiveRecord::Base
  belongs_to :host, class_name: "User" # fk :host_id
  belongs_to :neighborhood # fk :neighborhood_id
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations
end
