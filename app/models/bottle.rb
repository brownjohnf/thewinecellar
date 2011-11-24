class Bottle < ActiveRecord::Base

  belongs_to :cellar
  belongs_to :offering
  belongs_to :format

end
