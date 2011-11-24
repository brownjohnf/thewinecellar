class Owner < ActiveRecord::Base
  belongs_to :user
  belongs_to :cellar
end
