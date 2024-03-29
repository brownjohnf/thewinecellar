class CreateProducers < ActiveRecord::Migration
  def self.up
    create_table :producers do |t|
      t.string :name
      t.integer :region_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :producers
  end
end
