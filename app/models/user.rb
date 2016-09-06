class User < ActiveRecord::Base
  # User class handles both guest and host types
  # We dont need to make two tables, by using foreign_keys we can tell AR who we are refering to
  
  # as host
  has_many :listings, foreign_key: :host_id
  has_many :reservations, through: :listings
  # as guest
  has_many :trips, class_name: "Reservation", foreign_key: :guest_id # tell AR which table :trips is refering to, and specify which FK to look for
  has_many :reviews, foreign_key: :guest_id # specify which FK to look for
end
