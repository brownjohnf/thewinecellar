class Region < ActiveRecord::Base
  belongs_to :country
  has_many :producers
end
