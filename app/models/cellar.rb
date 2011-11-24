class Cellar < ActiveRecord::Base

  has_many :bottles
  has_many :owners
  has_many :users, :through => :owners

end
