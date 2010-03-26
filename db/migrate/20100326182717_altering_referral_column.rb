class AlteringReferralColumn < ActiveRecord::Migration
  def self.up
    rename_column :users, :referral, :master_gardener
    change_column :users, :master_gardener, :boolean, :default => 'false'
  end

  def self.down
    rename_column :users, :master_gardener, :referral
    change_column :users, :referral, :text
  end
end
