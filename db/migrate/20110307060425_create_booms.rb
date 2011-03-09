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
    add_index :booms, :user_id
    add_index :booms, :school_id
  end

  def self.down
    drop_table :booms
  end
end
