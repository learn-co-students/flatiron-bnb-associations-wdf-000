class User < ActiveRecord::Base
  # user has_many listings, we need to specify which foreign key to look for on
  # the listings table, otherwise, ActiveRecord is going to default to looking
  # for a user_id when we named it host_id

  # as a host:
  has_many :listings, foreign_key: :host_id
  has_many :reservations, through: :listings

  # as a guest
    # for this association, we need to tell AR which table :trips is referring to, and also specify which foreign_key to look for (:guest_id)
  has_many :trips, class_name: 'Reservation', foreign_key: :guest_id

  # We also need to specify that a guest has many reviews, so we need to tell it what foreign_key to look for. Otherwise, it defaults to the use_id foreign_key
  has_many :reviews, foreign_key: :guest_id
end
