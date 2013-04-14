class AddStatusAndFullnameToUser < ActiveRecord::Migration
  def up
    add_column :users, :status, :string, :default => 'Not In'
    add_column :users, :fullname, :string, :null => false
  end
  
  def down
    remove_column :users, :status
    remove_column :users, :fullname, :string
  end
end
