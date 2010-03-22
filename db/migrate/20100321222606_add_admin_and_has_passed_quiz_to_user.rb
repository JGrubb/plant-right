class AddAdminAndHasPassedQuizToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :is_admin, :boolean, :default => :false
    add_column :users, :email, :string
  end

  def self.down
    remove_column :users, :is_admin
    remove_column :users, :email
  end
end
