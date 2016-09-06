class Review < ActiveRecord::Base
  belongs_to :guest, class_name: "User" # fk :guest_id
  belongs_to :reservation # fk :reservation_id
end
