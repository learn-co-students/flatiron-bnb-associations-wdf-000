class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  def checkin
    Date.parse(super)
  end
  def checkout
    Date.parse(super)
  end
end
