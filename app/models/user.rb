class User < ActiveRecord::Base
  # user has_many listings, we need to specify which foreign key to look for on
  # the listings table, otherwise, ActiveRecord is going to default to looking
  # for a user_id when we named it host_id
  has_many :listings, :foreign_key => 'host_id'
end
