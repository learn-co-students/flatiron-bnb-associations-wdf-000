class Reservation < ActiveRecord::Base
  belongs_to :guest, class_name: 'User' # foreign_key - guest_id
  belongs_to :listing # foreign_key - listing_id
  has_one :review
end
