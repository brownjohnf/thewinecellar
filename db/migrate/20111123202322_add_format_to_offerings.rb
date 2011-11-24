class AddFormatToOfferings < ActiveRecord::Migration
  def self.up
    add_column :offerings, :format_id, :integer
  end

  def self.down
    remove_column :offerings, :format_id
  end
end
