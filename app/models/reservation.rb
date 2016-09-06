class Reservation < ActiveRecord::Base
  belongs_to :guest, class_name: "User" # fk :guest_id
  belongs_to :listing # fk :listing_id
  has_one :review
end
