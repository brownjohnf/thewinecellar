class Producer < ActiveRecord::Base

  has_many :offerings
  belongs_to :region

end
