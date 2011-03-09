class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.references :user
      t.integer :friend_id
      t.text :body

      t.timestamps
    end
    add_index :messages, :user_id
  end

  def self.down
    drop_table :messages
  end
end
