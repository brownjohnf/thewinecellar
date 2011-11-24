class CreateGrapes < ActiveRecord::Migration
  def self.up
    create_table :grapes do |t|
      t.string :scientific_name
      t.string :common_name
      t.integer :color_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :grapes
  end
end
