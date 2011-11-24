class RemoveVolumeFromOfferings < ActiveRecord::Migration
  def self.up
    remove_column :offerings, :volume
  end

  def self.down
    add_column :offerings, :volume, :integer
  end
end
