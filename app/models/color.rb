class Color < ActiveRecord::Base
  has_many :grapes
  has_many :offerings
end
