class AddCountyAndReferralToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :county, :string
    add_column :users, :referral, :text
  end

  def self.down
    remove_column :users, :county
    remove_column :users, :referral
  end
end
