class Reservation < ActiveRecord::Base
  belongs_to :guest, :class_name => "User"
  belongs_to :listing
  has_many :reviews

  # before_save { |record|
  #   record.checkin = Date.parse(record.checkin).strftime("%a, %d %b %Y") }

  # def checkin=(val)
  #   # binding.pry
  #   write_attribute(:checkin, Date.parse(val))
  # end
  #
  # def checkout=(val)
  #   # binding.pry
  #   write_attribute(:checkout, Date.parse(val))
  # end
end
