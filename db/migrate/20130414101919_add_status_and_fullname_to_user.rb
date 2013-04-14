class AddStatusAndFullnameToUser < ActiveRecord::Migration
  def change
    add_column :users, :status, :string, :default => 'Not In'
    add_column :users, :fullname, :string, :null => 'false'
  end
end
