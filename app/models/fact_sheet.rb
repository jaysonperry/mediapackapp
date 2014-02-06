class FactSheet < ActiveRecord::Base

  belongs_to :user

  validates_uniqueness_of :vanity_url

  validates :first_name, :last_name, :vanity_url, :client_city, :country, presence: true   


end
