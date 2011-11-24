class DropOfferings < ActiveRecord::Migration
  def self.up
    drop_table :offerings
  end

  def self.down
    create_table :offerings do |t|
      t.string :name
      t.integer :producer_id
      t.integer :color_id

      t.timestamps
    end
  end
end
