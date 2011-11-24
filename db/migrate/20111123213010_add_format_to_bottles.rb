class AddFormatToBottles < ActiveRecord::Migration
  def self.up
    add_column :bottles, :format_id, :integer
  end

  def self.down
    remove_column :bottles, :format_id
  end
end
