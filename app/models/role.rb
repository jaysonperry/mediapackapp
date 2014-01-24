class Role < ActiveRecord::Base
  has_many :users
  
  # this is how we control access via cancan
end
