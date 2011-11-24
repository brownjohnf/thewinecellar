class CreateBottles < ActiveRecord::Migration
  def self.up
    create_table :bottles do |t|
      t.string :name
      t.integer :producer_id
      t.integer :color_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bottles
  end
end
