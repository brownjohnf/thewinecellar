class CreateOfferings < ActiveRecord::Migration
  def self.up
    create_table :offerings do |t|
      t.string :name
      t.integer :producer_id
      t.integer :color_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :offerings
  end
end
