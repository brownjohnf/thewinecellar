class RemoveColsFromBottles < ActiveRecord::Migration
  def self.up
    remove_column :bottles, :name
    remove_column :bottles, :producer_id
    remove_column :bottles, :color_id
  end

  def self.down
    add_column :bottles, :color_id, :integer
    add_column :bottles, :producer_id, :integer
    add_column :bottles, :name, :string
  end
end
