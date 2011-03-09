class AddDefaultToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :school, :string
    add_column :users, :school_name, :string
    add_column :users, :guid, :integer
    add_column :users, :name, :string
  end

  def self.down
    remove_column :users, :name
    remove_column :users, :guid
    remove_column :users, :school
    remove_column :users, :school_name
  end
end
