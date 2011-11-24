class AddColsToBottles < ActiveRecord::Migration
  def self.up
    add_column :bottles, :cellar_id, :integer
    add_column :bottles, :offering_id, :integer
    add_column :bottles, :year, :integer
    add_column :bottles, :number, :integer
    add_column :bottles, :comment, :string
  end

  def self.down
    remove_column :bottles, :comment
    remove_column :bottles, :number
    remove_column :bottles, :year
    remove_column :bottles, :offering_id
    remove_column :bottles, :cellar_id
  end
end
