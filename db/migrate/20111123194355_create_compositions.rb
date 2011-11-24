class CreateCompositions < ActiveRecord::Migration
  def self.up
    create_table :compositions do |t|
      t.integer :grape_id
      t.integer :offering_id

      t.timestamps
    end
  end

  def self.down
    drop_table :compositions
  end
end
