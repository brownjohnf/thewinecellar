class CreateCellars < ActiveRecord::Migration
  def self.up
    create_table :cellars do |t|
      t.string :name
      t.string :location
      t.boolean :private

      t.timestamps
    end
  end

  def self.down
    drop_table :cellars
  end
end
