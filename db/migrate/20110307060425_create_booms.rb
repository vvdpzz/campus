class CreateBooms < ActiveRecord::Migration
  def self.up
    create_table :booms do |t|
      t.references :user
      t.references :school
      t.boolean :gender
      t.string :hair
      t.string :location
      t.text :flirt

      t.timestamps
    end
  end

  def self.down
    drop_table :booms
  end
end
