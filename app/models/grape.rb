class Grape < ActiveRecord::Base
  belongs_to :color
  has_many :compositions
end
