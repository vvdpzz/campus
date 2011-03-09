class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.references :user
      t.string :name
      t.references :boom
      t.text :body

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :boom_id
  end

  def self.down
    drop_table :comments
  end
end
