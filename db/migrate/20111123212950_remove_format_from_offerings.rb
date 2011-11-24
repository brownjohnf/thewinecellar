class RemoveFormatFromOfferings < ActiveRecord::Migration
  def self.up
    remove_column :offerings, :format_id
  end

  def self.down
    add_column :offerings, :format_id, :integer
  end
end
