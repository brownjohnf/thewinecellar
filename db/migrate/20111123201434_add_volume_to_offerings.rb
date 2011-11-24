class AddVolumeToOfferings < ActiveRecord::Migration
  def self.up
    add_column :offerings, :volume, :integer
  end

  def self.down
    remove_column :offerings, :volume
  end
end
