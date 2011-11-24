class Offering < ActiveRecord::Base
  belongs_to :producer
  belongs_to :color
end
