class Listing < ActiveRecord::Base
  # ActiveRecord's belongs_to method is going to look for a table named "host",
  # but that doesn't exist. Instead, we need to tell ActiveRecord which table
  # host is referring to
  belongs_to :host, :class_name => 'User' # foreign_key - :host_id
  belongs_to :neighborhood # foreign_key - neighborhood_id
  has_many :reservations
  has_many :reviews, through: :reservations
end
